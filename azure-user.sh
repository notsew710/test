#!/bin/bash

username=$1


createUser()
{
    newUser=$1
    DOMAIN=joshweston33gmail.onmicrosoft.com
    principal=$userdisplayname@$DOMAIN
    newPass=Password1
    userSub=$2

    # creates a new user if the user doesn't already exist 
    createdUsers=$(az ad user list --query [].userPrincipalName | grep -E /$principal/)

    if ! [ -z $createdUsers ]; then
        az ad user create \
        --display-name $newUser \
        --user-principal-name $principal \
        --force-change-password-next-login \
        --password $newPass \
        --subscription $userSub

        echo "created user"
    else 
        echo "user not created"
        exit 1
    fi
}

assignRole() 
{
    action=$1
    principal=$2
    role=$3

    createdUsers=$(az ad user list --query [].userPrincipalName | grep -E /$principal/)

    if [ $action != "create" ] && [ $action != "delete" ]; then 
        echo "choose a valid action create or delete"
        exit 1
    fi

    if ! [ -z $createdUsers ]; then
        echo "user does not exist"
        exit 1
    fi

    if [ $role != "reader" ] && [ $role != "contributor" ]; then 
        echo "this is not a valid role to assign"
    fi

    az role assignment $action --assignee $principal --role $role
    echo "you have have successfully used assign"

}

deleteUser()
{
   principal=$1

    admin=$(az role assignment list \
    --include-classic-administrators \
    --query "[?id=='NA(classic admins)'].principalName" | grep -E $principal)

    if ! [ -z $admin ]; then
        echo "cannot delete admin"
        exit 1
    fi

    az ad user delete --upn-or-object-id $principal
    echo "deleted user"
}

 # login to the admin
az login -u $username 

admin=$(az role assignment list \
    --include-classic-administrators \
    --query "[?id=='NA(classic admins)'].principalName" | grep -E $username)

if ! [ -z $admin ]; then 
    # functions assigned to delete
    command=$2
    $command $3 $4 $5
else 

    echo "you are not an admin"
    exit 1

fi

exit 0

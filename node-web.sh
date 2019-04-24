#!/bin/bash

if ! [ -e  /home/linuxbrew/.linuxbrew/bin/node ]; then 
	exit 1
	echo "node is not installed"
fi
## switch statement 

case $command in  
	"start") start $2;;
	"stop") stop $2;;
esac
start()
{
directoryN=$1
## need an npm script to make run
if ! [ -d $directoryN ]; then 
	echo "directory does not exist" 
	exit 1
fi 

cd $directoryN 

startDir=$(cat package.json | grep-E "start")

if [ -z "$startDir" ]; then 
	echo "No start found" 
	exit 1
fi

npm start 
echo "Starting"
}

stop()
{
## need an npm script to stop 
directoryN=$1

stopDir=$(cat package.json | grep -E "stop")

if [ -z "$stopDir" ]; then 
	echo "There is no stop" 
	exit 1
fi 

npm stop 
echo "Stopping"
}


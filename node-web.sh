#!/bin/bash

start()
{
filename=$1

if [-n $(which node) ]; then 

	echo installing node 
	./linux-setup.sh
fi
if [ -e $filename ]; then 
	node $filename 
	echo $filename started 
else 
	echo $filename has not been created
	exit 1
}

stop()
{
	process.exit(1)
}

command=$1
$command $2
exit 0

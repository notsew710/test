#!/bin/bash

## automate the process of starting, stopping a node web application
## include: node, 1 script with 2 functions

if ! [ -e  /home/linuxbrew/.linuxbrew/bin/node ]; then 
	exit 1
	echo "node is not installed"
fi
start()
{
directoryN=$1
## makes sure the directory exists 
if ! [ -d $directoryN ]; then 
	echo "directory does not exist" 
	exit 1
fi 

## go into the given directory 
cd $directoryN 

## searches and sets to json start function to startDir
startDir=$(cat package.json | grep-E "start")

## cannot find start 
if [ -z $startDir ]; then 
	echo "No start found" 
	exit 1
fi
## starts node
npm start 
echo "Starting"
}

stop()
{ 
directoryN=$1

## searches and sets json stop function to stopDir
stopDir=$(cat package.json | grep -E "stop")

## there is no stop in json
if [ -z $stopDir ]; then 
	echo "There is no stop" 
	exit 1
fi 

## stops node
npm stop 
echo "Stopping"
}

## switch statement

case $command in
        "start") start $2;;
        "stop") stop $2;;
esac

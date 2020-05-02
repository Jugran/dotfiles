#!/bin/bash

# Extract dockerfile from docker image
# usage-
#	$ dockerfile-ls DOCKER_IMAGE_NAME 1|0 



function dc_trace_cmd(){
	
	local parent=`docker inspect -f '{{ .Parent }}' $1` 2>/dev/null
	declare -i level=$3
	echo ${level}: `docker inspect -f '{{ .ContainerConfig.Cmd }}' $1 2>/dev/null`

	level=level+1

	if [ "${parent}" != "" ];then
		if [ "$2" = true ];then
			echo ${level}: $parent 
			dc_trace_cmd $parent $2 $level
		else
			dc_trace_cmd $parent false $level
		fi
	fi
}

if [ -z $1 ];then
	echo "Provide name of docker image"
else
	if [ ! -z $2 ];then
		dc_trace_cmd $1 true
	else
		dc_trace_cmd $1 false
	fi
fi

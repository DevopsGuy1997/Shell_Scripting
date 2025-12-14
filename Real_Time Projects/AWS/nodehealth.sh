#!/bin/bash
########################
# Auther: Rakesh
# Date: 08/12/2025
# this script outputs the node health
#
# version: v1
########################

set -x  # debug mode
set -e  # exit the script when there is an error
set -o  # pipefail

df -h   # to check the free space in the server
free -g # check the ram size
nproc   # print the number of processing units available 
ps -ef | grep amazon | awk " " '{print$2}' #this will print the lines which contains amazon only 2nd column

#!/bin/bash

#############################
#auther:rakesh
#date: 08/12/2025
#
#version: v1
#
#this script will report the aws resorce usage

#aws s3 bucket
#aws ec2 instances
#aws lambda 
#aws IAM users
#############################

#list s3 bucket
echo "list of s3 buckets"
aws s3 ls >> resouce tracker

#list ec2 instances
echo "list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstancesID' >> resouce tracker

#list lambda
echo "list of lambda functions"
aws lambda list-functions >> resource tracker

#list IAM users
echo "list of IAM users"
aws iam list-users >> resource tracker

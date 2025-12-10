#!/bin/bash
#
#####################
# Auther: Rakesh Mothkur
# Date: 07/12/2025
# 
# Version: V1
#
# This script will report the AWS resources usage
#
# aws s3 bucket
# aws ec2 instances
# aws lambda
# aws IAM users

#list s3 buckets
echo "list of s3 buckets"
aws s3 ls >> resurce tracker

#list ec2 instances
echo "list of ec2 instances"
aws ec2 describe-instances | jq ',Reservations[]
.Instances[].InstanceID[]' >> resurce tracker

#list lambda functions
echo "list if lambda functions"
aws lambda list-functions >> resurce tracker

#list IAM users
echo "list of IAM users"
aws iam list-users

#!/bin/bash
################
#author- Faizan
#date-10/03/2023
#version -v2
set -x
echo "Aws instanc_id"
aws ec2 describe-instances

echo "Aws_s3 bucket_names"
aws s3 ls

echo "Aws_IAM user"
aws iam list-users

echo "Aws_code build to list build"
aws codebuild list-builds --sort-order ASCENDING

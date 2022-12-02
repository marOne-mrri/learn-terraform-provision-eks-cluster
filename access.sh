#!/bin/bash

aws_credentials=$(aws sts assume-role --role-arn arn:aws:iam::352120524811:role/mapersive-devops-crossaccount-access --role-session-name "RoleSession1" --output json)
echo $aws_credentials
export AWS_ACCESS_KEY_ID=$(echo $aws_credentials | jq '.Credentials.AccessKeyId' | tr -d '"')
export AWS_SECRET_ACCESS_KEY=$(echo $aws_credentials | jq '.Credentials.SecretAccessKey' | tr -d '"')
export AWS_SESSION_TOKEN=$(echo $aws_credentials | jq '.Credentials.SessionToken' | tr -d '"')

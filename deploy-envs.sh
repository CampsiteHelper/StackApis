#!/bin/bash

# set environment variables used in deploy.sh and AWS task-definition.json:
export IMAGE_NAME=netcoreapps-stackapis
export IMAGE_VERSION=latest

export AWS_DEFAULT_REGION=us-east-1
export AWS_ECS_CLUSTER_NAME=ec2dotnet1
export AWS_VIRTUAL_HOST=elb1-1327534490.us-east-1.elb.amazonaws.com
export AWS_LOAD_BALANCER=targetGroupArn=arn:aws:elasticloadbalancing:us-east-1:025075093992:targetgroup/tg1/b17ba9b7be473c63,containerName=netcoreapps-stackapis,containerPort=5000
export AWS_ECS_ELB_ROLE=arn:aws:iam::025075093992:role/ecsInstanceRole

# set any sensitive information in travis-ci encrypted project settings:
# required: AWS_ACCOUNT_NUMBER, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY

# optional: SERVICESTACK_LICENSE

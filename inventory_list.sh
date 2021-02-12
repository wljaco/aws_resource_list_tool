#!/bin/bash

## This script uses the AWS CLI and AWS Config service to list resources within an AWS account
## Written by Will Jacobs (wljaco@amazon.com)



input="./aws_resource_types.txt" ## configservice parameters/switches
## The main loop will run the list-discovered-resources cmd for each resource category
## in the aws_resource_types.txt file
while IFS= read -r line
do
	echo "$line" >> inv_list.json &&  aws configservice list-discovered-resources --resource-type $line >> inv_list.json
	echo "$line queried"
done < "$input"

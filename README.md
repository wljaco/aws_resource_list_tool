# AWS Config List Resources Script

## Purpose
This script will list resources in an AWS account by using the AWS Config "list-resources" CLI command.

## Prerequisites
1. AWS Config **must** be enabled on the AWS account whose resources you want to list.
	- If Config is not enabled, search for Config in the AWS Console, and then use the "1-click setup" to enable Config with the default settings.
	- Config must finish scanning your resources
		- After enabling Config, this generally takes ~15 minutes to complete.
2. The script utilizes the AWS CLI, so the CLI must be installed on the machine/platform where it is running
	- If running the script on a local machine, make sure that your AWS CLI is configured for the account whose resources you want to query.
		- run 'aws configure' from the command line to configure your AWS CLI for the correct credentials/region/account
	- If running the script from a Cloud9 IDE (**recommended**) within the AWS account, the default configuration will result in the script listing all resources within the account that your IDE is running in.

## Usage
### We recommend running the script from within a Cloud9 IDE in the account where AWS Config is enabled, or from within an EC2 instance running in the account
1. Place both files into the same directory
2. Run `./inventory_list.sh`
3. This will output the results to `inv_list.json` inside the working directory
4. By default, the script will list **all** resources within the account
	- You can specify which resource categories will be listed by modifying the `aws_resource_types.txt` file.
	

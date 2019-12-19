# Packer AMI build for Caris 11.2.3 on Windows 2019 Server
This script creates an AMI with Caris, Openssh , awscli.

## Requirements
* An AWS account with permissions to create EC2 instances and AMIs
* [Packer](https://www.packer.io/)

## Usage Instructions

1. Ensure your aws credentials have been configured.  These scripts expect to use [Automatic Lookup](https://www.packer.io/docs/builders/amazon.html#specifying-amazon-credentials).  To use a profile other than default, set the env variable `AWS_PROFILE` to the profile name.
1. Clone or download this repo
1. In the repo folder run 
    ```
    packer build caris-server.json
    ```
1. Go make a cup of hot milk tea
1. Once finished, check the output for successful test results.
1. Your AMI is now ready to launch
1. Amend your instance's [Security Group rules](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html#AddRemoveRules) to allow TCP inbound over port 3389 and 22.


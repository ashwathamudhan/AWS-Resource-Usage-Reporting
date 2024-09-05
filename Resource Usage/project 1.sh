
........................................................................................................
COMMANDS 
AW CLI 
EC2 instance 
key name 
key pair 
secret key pair 
crontab
...........................................................................................................
sudo apt update -y

sudo  -i 
	 root host
 
sudo apt install unzip -y  

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

aws configure 

ssh ubuntu @(ip address)

ssh -i (key pair location )
 
chmod 600 (key pair location )

ssh -i (key pair location ) ubuntu@(ip address)

vim AWS_resource_usage.sh

chmod 777 AWS_resource_usage

./AWS_resource_usage.sh



.........................................................................................
#####################################
#Author: Ashwath Amudhan C A
#Date: 09/July/2024
#version:v1

#####################################

#This script will report the AWS resource usage

##################################################
#
set -x
#AWS S3
#AWS Ec2
#AWS IAM
#AWS lambda

##################################################

#list s3  buckets
echo "print list of s3 buckets "
aws s3 ls > resourceTracker
#list EC2 instance
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list lambda
echo "print list of lambda"
aws lambda list-functions


#list IAM users
echo "print IAM users "
aws IAM  list-users
.........................................................................................................

./AWS_resource_usage.sh | more

crontab -e 

# generate every day at 2 pm 

0 14 * * * /path of file >>/path/output.log 2 > & 1


...........................................................................................................
output 


+ echo 'print list of s3 buckets '
print list of s3 buckets
+ aws s3 ls
+ echo 'print list of ec2 instances'
print list of ec2 instances
+ aws ec2 describe-instances
+ jq '.Reservations[].Instances[].InstanceId'
"	i-0136d24c028c130c8"
+ echo 'print list of lambda'
print list of lambda
+ aws lambda list-functions
{
    "Functions": []
}
+ echo 'print IAM users '
print IAM users
+ aws iam list-users
{
    "Users": []
}

..................................................................................................


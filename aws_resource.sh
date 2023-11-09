

set -x

# S3 
echo "S3 buckets:"
aws s3 ls

# EC2 
echo "EC2 instances:"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# Lambda
echo "Lambda functions:"
aws lambda list-functions

# IAM Users
echo "IAM users:"
aws iam list-users
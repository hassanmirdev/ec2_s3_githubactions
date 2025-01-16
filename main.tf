provider "aws" {
  region = "us-east-1" # Set to your desired AWS region
}

# Create an EC2 Instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0e2c8caa4b6378d8c"  # Update with a valid AMI ID in your region
  instance_type = "t2.micro"  # Adjust the instance type as per your needs

  tags = {
    Name = "MyInstance004"
  }
}
terraform {
backend "s3" {
bucket = "terraformgithubbucket"
key = "tf-github/terrafor.tfstate"
region = "us-east-1"
encrypt = true
dynamodb_table = "terraform-lock-table"
acl = "bucket-owner-full-control" # S3 bucket ACL for access control
}
}

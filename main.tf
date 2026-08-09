terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Mumbai provider
provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}

# Virginia provider
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

# EC2 instance in Mumbai
resource "aws_instance" "mumbai_ec2" {
  provider = aws.mumbai

  ami           = "ami-07e5ce642bbc48c0d"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Mumbai-EC2"
  }
}

# EC2 instance in Virginia
resource "aws_instance" "virginia_ec2" {
  provider = aws.virginia

  ami           = "ami-052355af2a014bd2c"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Virginia-EC2"
  }
}

# Outputs
output "mumbai_instance_id" {
  value = aws_instance.mumbai_ec2.id
}

output "mumbai_public_ip" {
  value = aws_instance.mumbai_ec2.public_ip
}

output "virginia_instance_id" {
  value = aws_instance.virginia_ec2.id
}

output "virginia_public_ip" {
  value = aws_instance.virginia_ec2.public_ip
}
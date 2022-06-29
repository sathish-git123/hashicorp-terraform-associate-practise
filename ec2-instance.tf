terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}
# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
}

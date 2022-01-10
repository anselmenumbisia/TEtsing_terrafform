terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

resource "aws_instance" "example" {
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "t2.micro"
}

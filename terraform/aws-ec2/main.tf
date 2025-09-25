terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Fallback to latest Ubuntu Jammy if ami_id not provided
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

locals {
  ami_to_use = var.ami_id != "" ? var.ami_id : data.aws_ami.ubuntu.id
}

resource "aws_instance" "demo" {
  ami           = local.ami_to_use
  instance_type = var.instance_type

  tags = {
    Name = var.name
  }
}
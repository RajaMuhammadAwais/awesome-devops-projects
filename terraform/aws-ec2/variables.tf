# SPDX-FileCopyrightText: 2025 The Project Authors
# SPDX-License-Identifier: Apache-2.0

variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID to use (optional). If empty, latest Ubuntu Jammy will be used."
  type        = string
  default     = ""
}

variable "name" {
  description = "Name tag for the instance"
  type        = string
  default     = "demo-ec2"
}
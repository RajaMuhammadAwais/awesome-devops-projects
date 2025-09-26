# SPDX-FileCopyrightText: 2025 The Project Authors
# SPDX-License-Identifier: Apache-2.0

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.demo.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.demo.public_ip
}
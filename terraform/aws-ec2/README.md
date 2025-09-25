# Terraform AWS EC2 (Demo)

Provision a minimal EC2 instance for demo purposes.

## Prerequisites
- Terraform v1.x installed
- AWS credentials configured (via environment variables or AWS CLI)
- An AMI ID for your region (optional — defaults to latest Ubuntu Jammy via data source)

## Usage

Initialize and apply:

```bash
terraform init
terraform apply -auto-approve
```

Optionally specify variables:

```bash
terraform apply \
  -var="aws_region=us-east-1" \
  -var="instance_type=t3.micro" \
  -var="name=demo-ec2"
```

If you prefer a specific AMI ID:

```bash
terraform apply -var="ami_id=ami-xxxxxxxx" -auto-approve
```

## Outputs
- `instance_id` — ID of the created instance
- `public_ip` — Public IP address

## Clean up
```bash
terraform destroy -auto-approve
```
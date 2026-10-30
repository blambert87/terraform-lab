# Terraform Lab

Infrastructure as Code (IaC) learning project using Terraform and AWS.

## Objectives

- Learn Terraform fundamentals
- Provision AWS infrastructure from code
- Understand Terraform state management
- Build reusable and maintainable infrastructure

## Current Progress

- Terraform installed and configured
- AWS CLI configured
- AWS account connected
- Initial Terraform configuration created
- GitHub repository established

## Planned Resources

- S3 Bucket
- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance

## Terraform Workflow

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

## Repository Structure

```text
terraform-lab/
├── README.md
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── .gitignore
```

## Notes

Currently investigating AWS account permissions affecting Terraform and AWS CLI resource creation.

## Author

Brandon Lambert

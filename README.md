# Terraform Lab

Infrastructure as Code (IaC) learning project using Terraform and AWS.

## Overview

This repository documents my journey learning Terraform and AWS as part of my transition into DevOps and Cloud Engineering.

## Objectives

- Learn Terraform fundamentals
- Understand Infrastructure as Code (IaC)
- Provision AWS resources using Terraform
- Build reusable infrastructure using modules
- Learn state management and best practices

## Current Progress

### Completed

- Terraform installed and configured
- AWS CLI configured
- GitHub repository created
- Terraform modules created
- GitHub Actions workflow added
- VPC deployed
- Public subnet deployed
- Internet Gateway deployed
- Route table deployed
- Route table association configured
- Security Group configured
- EC2 instance deployed
- Nginx web server deployed
- Public website accessible

### Lessons Learned

- Terraform variables
- Terraform outputs
- Terraform locals
- Terraform modules
- AWS networking fundamentals
- Infrastructure as Code principles

## Deployed Infrastructure

## Application Deployment

### Container Platform

- Docker installed automatically using Terraform user_data
- Custom Docker image created
- Image pushed to GitHub Container Registry (GHCR)
- EC2 instance pulls container image automatically
- Container deployed automatically on instance creation

### Registry

- GitHub Container Registry (GHCR)

Image:

ghcr.io/blambert87/terraform-lab-web:latest

### Networking

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association

### Security

- Security Group

### Compute

- EC2 Instance

### Storage

- S3 Bucket

### Application

- Nginx Web Server

## Architecture

```text
Internet
    │
Internet Gateway
    │
Route Table
    │
Public Subnet
    │
EC2 Instance
    │
Nginx Web ServerGitHub
    │
    ▼
GitHub Container Registry (GHCR)
    │
    ▼
Terraform
    │
    ▼
AWS EC2
    │
    ▼
Docker
    │
    ▼
Custom Website
```

## Project Structure

```text
terraform-lab/
├── README.md
├── provider.tf
├── main.tf
├── networking.tf
├── security.tf
├── compute.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── .gitignore
```

## Terraform Workflow

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

## Technologies

- Terraform
- AWS EC2
- AWS VPC
- AWS IAM
- Amazon Linux 2023
- Docker
- GitHub Container Registry (GHCR)
- GitHub Actions
- Git
- Linux

## Results

Successfully built and deployed:

- AWS VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance
- Docker Runtime
- Custom Docker Image
- GitHub Container Registry Integration
- Public Website

The application is deployed using Infrastructure as Code and containerized workloads.

## Milestones

### v1.0

- AWS networking infrastructure
- EC2 instance
- Nginx web server

### v1.1

- Custom Docker image
- GitHub Container Registry
- Automated container deployment on EC2

## Screenshots

- AWS VPC
- AWS Subnet
- AWS Route Table
- AWS Security Group
- EC2 Instance
- Nginx Homepage

## Author

Brandon Lambert

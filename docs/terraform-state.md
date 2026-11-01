# Terraform State

## What is State?

Terraform state is a record of infrastructure managed by Terraform.

State is stored in:

terraform.tfstate

## Why is it Important?

- Tracks managed resources
- Stores resource IDs
- Maps Terraform configuration to real infrastructure

## Team Environments

State should not be stored locally.

Common remote backend:

- AWS S3

State locking:

- DynamoDB

## Commands

terraform show
terraform state list
terraform state show

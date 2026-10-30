locals {
  common_tags = {
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

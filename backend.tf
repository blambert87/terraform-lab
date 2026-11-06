terraform {
  backend "s3" {
    bucket = "blambert87-terraform-state"
    key    = "terraform-lab/terraform.tfstate"
    region = "eu-north-1"
  }
}

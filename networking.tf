# Future VPC configuration

# resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
#
#   tags = {
#     Name = "${var.project_name}-vpc"
#   }
# }

module "network" {
  source = "./modules/network"

  vpc_cidr     = var.vpc_cidr
  project_name = var.project_name
}

output "aws_region" {
  value = var.aws_region
}

output "project_name" {
  value = var.project_name
}

output "managed_by" {
  value = "Terraform"
}

output "environment" {
  value = var.environment
}

output "vpc_cidr" {
  value = var.vpc_cidr
}

output "module_vpc_cidr" {
  value = module.network.vpc_cidr
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "internet_gateway_id" {
  value = module.network.internet_gateway_id
}

output "route_table_id" {
  value = module.network.route_table_id
}

output "security_group_id" {
  value = module.security.security_group_id
}

output "instance_id" {
  value = module.compute.instance_id
}

output "public_ip" {
  value = module.compute.public_ip
}

output "private_subnet_id" {
  value = module.network.private_subnet_id
}

output "private_route_table_id" {
  value = module.network.private_route_table_id
}

output "private_instance_id" {
  value = module.compute.private_instance_id
}

output "private_subnet_b_id" {
  value = module.network.private_subnet_b_id
}

output "postgres_endpoint" {
  value     = aws_db_instance.postgres.endpoint
  sensitive = true
}

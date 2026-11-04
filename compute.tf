module "compute" {
  source = "./modules/compute"

  instance_type     = var.instance_type
  subnet_id         = module.network.subnet_id
  security_group_id = module.security.security_group_id
  project_name      = var.project_name
  ami_id            = var.ami_id
}

module "compute" {
  source = "./modules/compute"

  instance_type = var.instance_type
}

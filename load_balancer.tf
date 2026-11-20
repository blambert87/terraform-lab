module "load_balancer" {
  source = "./modules/load_balancer"

  project_name       = var.project_name
  vpc_id             = module.network.vpc_id
  public_subnet_id   = module.network.public_subnet_id
  public_subnet_b_id = module.network.public_subnet_b_id

  instance_id           = module.compute.instance_id
  alb_security_group_id = module.security.alb_security_group_id
}

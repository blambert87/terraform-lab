module "autoscaling" {
  source = "./modules/autoscaling"

  project_name  = var.project_name
  instance_type = var.instance_type
  ami_id        = var.ami_id

  public_subnet_id   = module.network.public_subnet_id
  public_subnet_b_id = module.network.public_subnet_b_id

  web_security_group_id = module.security.web_security_group_id

  target_group_arn = module.load_balancer.target_group_arn
}

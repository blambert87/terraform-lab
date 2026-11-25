resource "aws_launch_template" "web" {
  name_prefix   = "${var.project_name}-lt"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name = "terraform-lab-key-v2"

  vpc_security_group_ids = [
    var.web_security_group_id
  ]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "${var.project_name}-asg-instance"
    }
  }
  user_data = base64encode(<<-EOF
  #!/bin/bash

  dnf update -y

  dnf install -y docker

  systemctl enable docker
  systemctl start docker

  sleep 30

  docker pull ghcr.io/blambert87/terraform-lab-web:latest

  docker run -d \
   --name terraform-lab-web \
   -p 80:80 \
   ghcr.io/blambert87/terraform-lab-web:latest

 EOF
 )
}

resource "aws_autoscaling_group" "web" {
  name = "${var.project_name}-asg"

  desired_capacity = 2
  min_size         = 2
  max_size         = 4

  vpc_zone_identifier = [
    var.public_subnet_id,
    var.public_subnet_b_id
  ]

  target_group_arns = [
    var.target_group_arn
  ]

  launch_template {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }
}

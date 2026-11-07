resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

user_data = <<-EOF
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

  associate_public_ip_address = true
  key_name                    = "terraform-lab-key"

  tags = {
    Name = "${var.project_name}-ec2"
  }
}

resource "aws_instance" "private" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = var.private_subnet_id

  associate_public_ip_address = false

  tags = {
    Name = "${var.project_name}-private-ec2"
  }
}

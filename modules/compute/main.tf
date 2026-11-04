resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
  #!/bin/bash
  dnf install -y nginx
  systemctl enable nginx
  systemctl start nginx

  cat > /usr/share/nginx/html/index.html <<HTML
  <!DOCTYPE html>
  <html>
  <head>
   <title>Terraform Lab</title>
  </head>
  <body>
   <h1>Terraform Lab</h1>
   <p>Provisioned automatically with Terraform.</p>
  </body>
  </html>
  HTML
  EOF

  associate_public_ip_address = true
  key_name                    = "terraform-lab-key"

  tags = {
    Name = "${var.project_name}-ec2"
  }
}

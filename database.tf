resource "aws_db_subnet_group" "postgres" {
  name = "${var.project_name}-db-subnet-group"

  subnet_ids = [
    module.network.private_subnet_id,
    module.network.private_subnet_b_id
  ]

  tags = {
    Name = "${var.project_name}-db-subnet-group"
  }
}

resource "aws_security_group" "postgres" {
  name        = "${var.project_name}-postgres-sg"
  description = "PostgreSQL access"
  vpc_id      = module.network.vpc_id

  ingress {
    description     = "PostgreSQL"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [module.security.security_group_id]
  }

  tags = {
    Name = "${var.project_name}-postgres-sg"
  }
}

resource "aws_db_instance" "postgres" {
  identifier = "terraform-lab-postgres"

  engine         = "postgres"
  engine_version = "17"

  instance_class = "db.t3.micro"

  allocated_storage = 20
  storage_type      = "gp3"

  db_name  = "terraformlab"
  username = "postgresadmin"
  password = var.db_password

  publicly_accessible = false

  vpc_security_group_ids = [
    aws_security_group.postgres.id
  ]

  db_subnet_group_name = aws_db_subnet_group.postgres.name

  skip_final_snapshot = true

  tags = {
    Name = "terraform-lab-postgres"
  }
}

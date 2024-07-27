provider "aws" {
  profile = "henry"
  region  = "us-east-1"
}

resource "aws_db_instance" "postgresdb"{
  identifier                   = var.db_identifier
  engine                       = var.engine_type
  instance_class               = var.instance_class
  username                     = var.db_username
  password                     = var.db_password
  allocated_storage            = var.allocated_storage
  engine_version               = var.engine_version
  port                         = var.port
  publicly_accessible          = false
  multi_az                     = false
  performance_insights_enabled = true
  deletion_protection          = false
  skip_final_snapshot          = true
}

resource "aws_instance" "exam_user" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

provider "aws" {
  profile = "henry"
  region  = "us-east-1"
}
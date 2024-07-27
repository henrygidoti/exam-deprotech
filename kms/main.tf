resource "aws_kms_key" "exam" {
  description = var.key_description
  is_enabled  = true
}

resource "aws_kms_alias" "exam" {
  name          = "alias/${var.key_alias}"
  target_key_id = aws_kms_key.exam.key_id
}

provider "aws" {
  profile = "henry"
  region  = "us-east-1"
}
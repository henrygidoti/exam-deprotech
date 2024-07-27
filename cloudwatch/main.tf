resource "aws_cloudwatch_log_group" "exam" {
  name = var.log_group_name

  retention_in_days = var.retention_days
}

provider "aws" {
  profile = "henry"
  region  = "us-east-1"
}
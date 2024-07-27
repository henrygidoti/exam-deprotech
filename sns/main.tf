resource "aws_sns_topic" "exam" {
  name = var.topic_name
}

provider "aws" {
  profile = "henry"
  region  = "us-east-1"
}
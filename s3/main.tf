resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_name
  }
}

provider "aws" {
  profile = "henry"
  region  = "us-east-1"
}
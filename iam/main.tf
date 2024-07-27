resource "aws_iam_user" "exam_user" {
  name = var.iam_user_name
}

resource "aws_iam_user_policy" "exam_policy" {
  name = "exam_policy"
  user = aws_iam_user.exam_user.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

provider "aws" {
  profile = "henry"
  region  = "us-east-1"
}
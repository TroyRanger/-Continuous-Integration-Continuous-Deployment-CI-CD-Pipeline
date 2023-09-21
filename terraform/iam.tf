resource "aws_iam_role" "ec2_role" {
  name = "web-server-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_policy" "ec2_policy" {
  name        = "web-server-policy"
  description = "Policy for web servers"

  # Define policy statements here
  # Example:
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = ["s3:GetObject"],
      Effect = "Allow",
      Resource = "arn:aws:s3:::my-bucket/*"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ec2_attachment" {
  policy_arn = "arn:aws:iam::862570564189:instance-profile/Hello123"
  role       = aws_iam_role.ec2_role.name
}


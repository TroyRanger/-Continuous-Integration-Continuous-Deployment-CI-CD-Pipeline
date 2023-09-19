resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Security group for web servers"

  # Define inbound and outbound rules as needed
  # Example:
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Add more rules here
}

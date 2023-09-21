resource "aws_instance" "web_server" {
  ami           = "ami-0989fb15ce71ba39e" # Replace with your desired AMI
  instance_type = "t3.micro" # Replace with your desired instance type
  
  key_name      = "HelloWorld" # Replace with your key pair name
}

# Define security groups, EBS volumes, and other instance configurations here

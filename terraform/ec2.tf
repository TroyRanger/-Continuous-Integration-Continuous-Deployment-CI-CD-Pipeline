resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI
  instance_type = "t2.micro" # Replace with your desired instance type
  subnet_id     = aws_subnet.subnet_a.id # Use the appropriate subnet
  key_name      = "my-key-pair" # Replace with your key pair name
}

# Define security groups, EBS volumes, and other instance configurations here

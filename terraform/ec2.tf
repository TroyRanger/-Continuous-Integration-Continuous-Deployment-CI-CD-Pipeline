resource "ec2 instance" "Hello World" {
  ami           = "ami-0989fb15ce71ba39e" # Replace with your desired AMI
  instance_type = "t3.micro" # Replace with your desired instance type
  subnet_id     = subnet-013994aad1156e810 # Use the appropriate subnet
  key_name      = "HelloWorld" # Replace with your key pair name
}

# Define security groups, EBS volumes, and other instance configurations here

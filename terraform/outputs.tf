output "ec2_instance_ids" {
  description = "IDs of EC2 instances created"
  value       = aws_instance.web_server[*].id
}

# Add more outputs as needed

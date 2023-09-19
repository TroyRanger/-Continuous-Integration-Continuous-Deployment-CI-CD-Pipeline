terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket" # Replace with your bucket name
    key            = "terraform.tfstate"
    region         = "us-east-1" # Replace with your desired region
    encrypt        = true
    dynamodb_table = "my-lock-table" # Optional: Use DynamoDB for state locking
  }
}

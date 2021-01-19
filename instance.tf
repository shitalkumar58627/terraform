# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

# Create a instance
resource "aws_instance" "bastion" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform"
  }
}

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "ramapp_server" {
  ami           = "ami-02b64aa047cb5edf5"
  instance_type = "t3.micro"

  tags = {
    Name = "var.learn-terraform"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

backend "s3"{
  bucket= "terraform-infosectrain-remote-backend"
key= "terraform.tfstate"
region= "us-west-2"
}
 required_version=">=1.5.0"
}

}

provider "aws" {
  region = "us-east-1"
}

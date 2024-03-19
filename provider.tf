terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72"
    }
  }
}

provider "aws" {
  region = var.location
}

# S3 backend to use S3 bucket for dns tfstate file
terraform {
  backend "s3" {
    bucket         = "terraform-state-backend"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_state"
  }
}

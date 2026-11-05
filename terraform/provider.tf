terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.72.0"
    }
  }
}

provider "aws" {
    region = "us-east-2"
    profile = "for-terraform-project"
  # Configuration options
}
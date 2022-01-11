terraform {
  required_version = "~> 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.69.0"
    }
  }
}

provider "aws" {
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"
  profile                 = var.profile
}

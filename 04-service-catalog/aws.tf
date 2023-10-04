terraform {
  required_version = "~> 1.5.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.17.0"
    }
  }
}

provider "aws" {
  region                  = var.region
  shared_credentials_files = ["~/.aws/credentials"]
  #profile                 = var.profile
}

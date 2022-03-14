terraform {
  required_version = "~> 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.69.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 0.10.0"
    }
  }
}

provider "aws" {
  region                  = "eu-west-2"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "default"
}
provider "awscc" {
  region = "eu-west-2"
}

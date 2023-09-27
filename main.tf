terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.4.2"
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "projetodevopstf"
    key = "terraformeks.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}

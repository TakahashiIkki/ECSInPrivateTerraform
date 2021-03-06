terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.13"
    }
  }
  required_version = "~> 1.1.9"
}

provider "aws" {
  region = "ap-northeast-1"
}
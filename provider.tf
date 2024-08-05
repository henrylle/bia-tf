#  Alterando a versao para trabalhar com ipv6
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "bia-tf"
}

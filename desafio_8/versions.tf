terraform {
  required_version = ">= 1.1.0"

  cloud {
    organization = "mi_organizacion"

    workspaces {
      name = "mi_workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
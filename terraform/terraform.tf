terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  backend "remote" {
    organization = "CloudHubActions"

    workspaces {
      name = "s3_uploader"
    }
  }
  required_version = ">= 1.6.3"
}

provider "aws" {
  region = var.region

}

terraform {
  cloud {
    organization = "tfcloud-organization"
    workspaces {
      name = "poc-tfcloud-common"
    }
  }
}


data "terraform_remote_state" "production" {
  backend = "remote"

  config = {
    organization = "tfcloud-organization"
    workspaces   = {
      name = "production"
    }
  }
  
}

resource "random_pet" "vpc" {}
resource "random_pet" "s3" {}
resource "random_pet" "rds" {}
resource "random_pet" "ec2" {}
resource "random_pet" "r53" {}

resource "aws_s3_bucket" "mybucket" {
  bucket_prefix = "poc-deploy-dev"
  
}

module "vpc-module" {
  source  = "app.terraform.io/tfcloud-organization/vpc-module/aws"
  version = "1.0.5"
  cidr    = var.tfc_subnet_cidr
  name    = data.terraform_remote_state.production.outputs.vpc_name
}

variable "tfc_subnet_cidr" {}

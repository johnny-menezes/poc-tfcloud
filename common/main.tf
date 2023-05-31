terraform {
  cloud {
    organization = "tfcloud-organization"
    workspaces {
      name = "poc-tfcloud-common"
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
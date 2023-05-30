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


resource "aws_s3_bucket" "mybucket" {
  bucket_prefix = "poc-deploy-dev"
  
}
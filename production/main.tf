terraform {
  cloud {
    organization = "tfcloud-organization"
    workspaces {
      name = "poc-tfcloud-production"
    }
  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket_prefix = "poc-deploy"
  
}

resource "random_pet" "vpc" {}
resource "random_pet" "s3" {}
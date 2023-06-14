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
resource "random_pet" "ec2" {}
resource "random_pet" "lambda" {}

output "vpc_name" {
  value = random_pet.vpc.id
}

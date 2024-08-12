######### TF CLOUD ############

terraform {
  cloud {
    organization = "Gopoints-InfraOps"
    workspaces {
      name = "poc-iac-gopoints"
    }
  }
}


variable "region" {}

provider "aws" {
  region = var.region
}
resource "aws_s3_bucket" "bucket-poc-tf-cloud" {
  bucket = "bucket-poc-tf-cloud"
}

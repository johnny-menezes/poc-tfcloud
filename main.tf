########## TF CLOUD ############
#
#terraform {
#  cloud {
#    organization = "Gopoints-InfraOps"
#    workspaces {
#      name = "poc-iac-gopoints"
#    }
#  }
#}



#provider "aws" {
#  region = TF_VAR_region
#}

resource "aws_s3_bucket" "bucket-poc-tf-cloud" {
  bucket = "bucket-poc-tf-cloud"
}

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
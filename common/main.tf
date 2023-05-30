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

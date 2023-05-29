terraform {
  cloud {
    organization = "tfcloud-organization"
    workspaces {
      name = "poc-tfcloud-common"
    }
  }
}


resource "random_pet" "vpc" {}


terraform {
  cloud {
    organization = "tfcloud-organization"
    workspaces {
      name = "poc-tfcloud-common"
    }
  }
}


resource "randon_pet" "vpc" {}


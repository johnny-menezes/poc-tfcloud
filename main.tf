######### TF CLOUD ############

terraform {
  cloud {
    organization = "Gopoints-InfraOps"
    workspaces {
      name = "poc-iac-gopoints"
    }
  }
}


######### RESOURCES #################

resource "random_pet" "vpc"    {}
resource "random_pet" "s3"     {}
#resource "random_pet" "ec2"    {}
#resource "random_pet" "lambda" {}
#resource "random_pet" "rds"    {}


####### OUTPUTS     #################

output "vpc_name" {
  value = random_pet.vpc.id
}

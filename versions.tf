#### Terraform and AWS Provider version being used ###
terraform { 

 required_providers {
     aws = {
     source = "hashicorp/aws"
     version = ">=4.3.0"
    }
  }
}

### Configure AWS Provider ###
provider "aws" {
 region = "us-east-1"
 assume_role {
 role_arn = "arn:aws:iam::897722698330:role/open-id-connect-tf-cloud"

 }

}

  #default_tags {
  # tags = {
  #   Environment     =  ""
  #   Service         = "map-migrated"
  # }
  #
  #}


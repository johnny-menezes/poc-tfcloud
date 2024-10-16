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

}



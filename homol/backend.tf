terraform {
   backend "s3" {
       region   = "us-east-1"
       bucket   = "demo-tfstate-infra"
       encrypt  = true
       key      = "aws-ec2/demo-ec2/terraform.tfstate"

   }
   
}

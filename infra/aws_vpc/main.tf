#-------------------------------
# AWS Provider
#-------------------------------
provider "aws" {
  region  = var.aws_region
}

#-------------------------------
# S3 Remote State
#-------------------------------
terraform {
  backend "s3" {
    bucket         = "statebucket-trivut-marketplace"
    key            = "trivut-marketplace-vpc.tfstate"
    region         = "us-west-2"
    dynamodb_table = "symbol-tf-lock"
  }
  
}


#
#
#

  


### end of main.tf ###

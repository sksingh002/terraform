//create AWS provider 
provider "aws" {
    //aws profile defined in aws cli
  profile    = "amplifyAdmin-1"

    //aws region selection
  region     = "ap-southeast-1"
}

//create s3 tfstate location cl
terraform {
  backend "s3"{
    bucket         = "sks-iac-terraform"
    region         = "ap-southeast-1"
    key            = "terraform-state/terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}
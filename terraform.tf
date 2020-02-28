//create AWS provider 
provider "aws" {
    //aws profile defined in aws cli
  profile    = "amplifyAdmin-1"

    //aws region selection
  region     = "us-east-1"
}

//create s3 tfstate location cl
terraform {
  backend "s3"{
    bucket         = "sks-iac-terraform"
    region         = "us-east-1"
    key            = "terraform-state/terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}
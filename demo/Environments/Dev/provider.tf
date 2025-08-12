
//Here is where we are defining our Terraform setting 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

// Here we are configuring our aws provider 
// we are setting the region to the region of our variable "region"
provider "aws"{
  region     = var.region
}
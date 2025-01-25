# Configure the AWS Provider
provider "aws" {
  region = var.region
  
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "ecs-tf-bucket01"
    key            = "ecs/terraform.tfstate"
    region         = "us-east-1"
    
  }
}
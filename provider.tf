terraform {
  required_version = ">= 1.0.0"
  #chech the required version

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
}

provider "aws" {
  alias      = "us_east_1"
  region     = var.region_us_east_1
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  endpoints {
    ec2 = "http://localhost:4566"
  }
}

provider "aws" {
  alias      = "us_east_2"
  region     = var.region_us_east_2
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  endpoints {
    ec2 = "http://localhost:4566"
  }
}

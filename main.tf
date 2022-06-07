provider "aws" {
  region = var.aws_region
  version = "3.63.0"
}


terraform {
  backend "s3" {
    bucket         = "dev-tfstate"
    key            = "terraform.state"
    region         = var.aws_region
    encrypt        = true
    dynamodb_table = "dev-locktable"
  }
}

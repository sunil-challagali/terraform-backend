provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-terraform-state-bucket-sunil7756"

  tags = {
    Name        = "terraform-state"
    Environment = "Dev"
  }
}

terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket-sunil7756"
    key    = "terraform/terraform.tfstate"
    region = "ap-south-1"
  }
}

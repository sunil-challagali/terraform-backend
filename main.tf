provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-terraform-state-bucket-sunil7756"
  acl    = "public"

  tags = {
    Name        = "terraform-state"
    Environment = "Dev"
  }
}


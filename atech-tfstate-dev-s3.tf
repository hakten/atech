provider "aws" {
  region    = "us-east-1"
}



resource "aws_s3_bucket" "atech-tfstate-dev" {
  bucket = "atech-tfstate-dev"
  acl    = "private"

  versioning {
    enabled = true
  }
}
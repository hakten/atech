provider "aws" {
  region    = "us-east-2"
}



resource "aws_s3_bucket" "atech-tfstate-qa" {
  bucket = "atech-tfstate-qa"
  acl    = "private"

  versioning {
    enabled = true
  }
}
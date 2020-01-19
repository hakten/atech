provider "aws" {
}

resource "aws_s3_bucket" "atech-backend-dev" {
  region = "us-east-1"
  bucket = "atech-backend-dev"
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "atech-backend-qa" {
  region = "us-east-2"
  bucket = "atech-backend-qa"
  acl    = "private"

  versioning {
    enabled = true
  }
}
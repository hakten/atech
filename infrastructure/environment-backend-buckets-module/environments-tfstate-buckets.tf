provider "aws" {
  region    = var.region
}


resource "aws_s3_bucket" "environment-backend-buckets" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }
}

variable "region" {}
variable "bucket_name" {}


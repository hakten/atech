provider "aws" {
  region    = var.region
}


resource "aws_s3_bucket" "environment-backend-buckets" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }
  tags = {
    Project     = var.project
  }
}

variable "region" {}
variable "bucket_name" {}
variable "project" {}




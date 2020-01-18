provider "aws" {
  region    = var.region
}


resource "aws_s3_bucket" "environments-tfstate-buckets" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }
}
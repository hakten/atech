terraform {
  backend "s3" {
    bucket = "atech-backend"
    key    = "environment-backend-buckets"
    region = "eu-west-1"
  }
}
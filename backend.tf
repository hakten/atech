terraform {
  backend "s3" {
    bucket = "atech-tfstate-pm"
    key    = "infrastructure.tfstate"
    region = "eu-west-1"
  }
}
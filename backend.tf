terraform {
  backend "s3" {
    bucket = "atech-tfstate"
    key    = "infrastructure.tfstate"
    region = "eu-west-1"
  }
}
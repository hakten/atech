terraform {
  backend "s3" {
    bucket = "atech-backend"
    key    = "env-backend-infrastructure.tfstate"
    region = "eu-west-1"
    dynamodb_table = "atech-backend"
  }
}
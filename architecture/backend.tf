terraform {
  backend "s3" {
    region = "eu-west-1"
    bucket = "t-s3-backend"
    key    = "baytech/arch/infrastructure.tfstate"
  }
}
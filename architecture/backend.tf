terraform {
  backend "s3" {
    bucket = "t-s3-backend"
    key    = "baytech/arch/infrastructure.tfstate"
    region = "eu-west-1"
  }
}
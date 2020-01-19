provider "aws" {
  region    = var.region
}

resource "aws_dynamodb_table" "environment-backend-dynamodb" {
  name      = var.name
  hash_key  = "LockID"
  read_capacity = 5
  write_capacity = 5

  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
      Project = var.project
  }

}

variable "region" {}
variable "name" {}
variable "project" {}



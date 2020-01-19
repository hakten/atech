provider "aws" {
  region    = var.region
}

resource "aws_dynamodb_table" "environment-backend-dynamodb" {
  name      = "deneme"
  hash_key  = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}

variable "region" {
  
}

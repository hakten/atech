provider "aws" {
  region    = var.region
}

resource "aws_dynamodb_table" "environment-backend-dynamodb" {
  name      = "deneme"
  hash_key  = "LockID"
  read_capacity = 5
  write_capacity = 5

  attribute {
    name = "LockID"
    type = "S"
  }

}

variable "region" {
  
}

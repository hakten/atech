provider "aws" {
  region    = var.region
}

resource "aws_dynamodb_table" "environment-backend-dynamodb" {
  name      = deneme

  attribute {
    name = "LockID"
    type = "S"
  }

}

variable "region" {
  
}

provider "aws" {
  region    = var.region
}

resource "aws_dynamodb_table" "environment-backend-dynamodb" {
  name      = var.name

  attribute {
    name = "LockID"
    type = "S"
  }
  tags {
      Project = var.project
  }
}
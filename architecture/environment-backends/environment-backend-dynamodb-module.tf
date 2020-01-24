module "backend-dynamodb-dev" {
  source = "./environment-backend-dynamodb-module"
  
  region        = "us-east-1"
  name          = "baytech-dev"
  project       = "baytech"
}

module "backend-dynamodb-qa" {
  source = "./environment-backend-dynamodb-module"
  
  region        = "us-east-2"
  name          = "baytech-qa"
  project       = "baytech"
}

module "backend-dynamodb-stage" {
  source = "./environment-backend-dynamodb-module"
  
  region        = "us-west-1"
  name          = "baytech-stage"
  project       = "baytech"
}

module "backend-dynamodb-prod" {
  source = "./environment-backend-dynamodb-module"
  
  region        = "us-west-2"
  name          = "baytech-prod"
  project       = "baytech"
}
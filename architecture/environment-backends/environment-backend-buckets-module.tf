module "backend-dev" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-east-1"
  bucket_name   = "baytech-backend-dev"
  project       = "baytech"
}

module "backend-qa" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-east-2"
  bucket_name   = "baytech-backend-qa"
  project       = "baytech"
}

module "backend-stage" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-west-1"
  bucket_name   = "baytech-backend-stage"
  project       = "baytech"
}

module "backend-prod" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-west-2"
  bucket_name   = "baytech-backend-prod"
  project       = "baytech"
}
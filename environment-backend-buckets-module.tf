module "atech-backend-dev" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-east-1"
  bucket_name   = "atech-backend-dev"
}

module "atech-backend-qa" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-east-2"
  bucket_name   = "atech-backend-qa"
}

module "atech-backend-stage" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-west-1"
  bucket_name   = "atech-backend-stage"
}

module "atech-backend-prod" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-west-2"
  bucket_name   = "atech-backend-prod"
}
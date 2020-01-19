module "atech-backend-dev" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-east-1"
  bucket_name   = "atech-backend-dev"
  project       = "atech"
}

module "atech-backend-qa" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-east-2"
  bucket_name   = "atech-backend-qa"
  project       = "atech"
}

module "atech-backend-stage" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-west-1"
  bucket_name   = "atech-backend-stage"
  project       = "atech"
}

module "atech-backend-prod" {
  source = "./environment-backend-buckets-module"
  
  region        = "us-west-2"
  bucket_name   = "atech-backend-prod"
  project       = "atech"
}
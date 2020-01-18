module "atech-tfstate-dev" {
  source = "./environments-tfstate-buckets"
  
  region        = "us-east-1"
  bucket_name   = "atech-tfstate-dev"
}

module "atech-tfstate-qa" {
  source = "./environments-tfstate-buckets"
  
  region        = "us-east-2"
  bucket_name   = "atech-tfstate-qa"
}

module "atech-tfstate-stage" {
  source = "./environments-tfstate-buckets"
  
  region        = "us-west-1"
  bucket_name   = "atech-tfstate-stage"
}

module "atech-tfstate-prod" {
  source = "./environments-tfstate-buckets"
  
  region        = "us-east-2"
  bucket_name   = "atech-tfstate-prod"
}
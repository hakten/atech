module "atech-backend-dynamodb-dev" {
  source = "./environment-backend-dynamodb-module"
  
  region        = "us-east-1"
  name          = "atech-dev"
  project       = "atech"
}

# module "atech-backend-dynamodb-qa" {
#   source = "./environment-backend-dynamodb-module"
  
#   region        = "us-east-2"
#   name          = "atech-qa"
#   project       = "atech"
# }

# module "atech-backend-dynamodb-stage" {
#   source = "./environment-backend-dynamodb-module"
  
#   region        = "us-west-1"
#   name          = "atech-stage"
#   project       = "atech"
# }

# module "atech-backend-dynamodb-prod" {
#   source = "./environment-backend-dynamodb-module"
  
#   region        = "us-west-2"
#   name          = "atech-prod"
#   project       = "atech"
# }
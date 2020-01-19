module "iam" {
  source = "./iam-users-module"
  
  user_names =  ["dev","qa"]
}

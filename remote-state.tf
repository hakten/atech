data "terraform_remote_state" "main" {
  backend "s3"
  config   = {
    region = "eu-west-1"
    bucket = "t-s3-backend"
    key    = "baytech/arch/infrastructure.tfstate"
}

output "full_list" { 
  value = data.terraform_remote_state.main.* 
} 
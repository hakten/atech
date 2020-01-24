#VPC
region          = "eu-west-1"

cidr            = "10.0.0.0/16"

project         = "Baytech"
environment     = "Arch"

azs             = ["eu-west-1a","eu-west-1b","eu-west-1c"]
public_subnets  = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
private_subnets = []

#IAM
iam_group_name          = "baytech"
iam_group_policy_name   = "Admin"     #enter as "Admin" or "PowerUserAccess"
iam_users               = ["Baytech1","Baytech2"]   #enter user names as list

#Security group
bastion_public_ip = "0.0.0.0/0"










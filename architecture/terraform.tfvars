#VPC
region          = "eu-west-1"

cidr            = "10.0.0.0/16"

project         = "Baytech"
environment     = "Arch"

azs             = ["eu-west-1a","eu-west-1b","eu-west-1c"]
public_subnets  = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
private_subnets = []


#iam
iam_group_name          = "baytech"

#enter as "AdministratorAccess" or "PowerUserAccess" etc.
iam_group_policy_name   = "PowerUserAccess"

#enter user names as list
iam_users               = ["User1","User2"]   


#for ssh security group ingress rule cidr
bastion_public_ip = "0.0.0.0"

#username for ssh
user = "centos"









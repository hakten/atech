variable "region" {}

variable "cidr" {}
variable "project" {}
variable "environment" {}

variable "azs" {
    type = "list"
}
variable "public_subnets" {
    type = "list"
}
variable "private_subnets" {
    type = "list"
}

variable "iam_group_name" {}
variable "iam_group_policy_name" {}
variable "iam_users" {
    type = "list"
}

variable "bastion_public_ip" {}
variable "user" {}


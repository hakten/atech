module "vpc" {
  source = "./module-vpc"

cidr            = "${var.cidr}"

project         = "${var.project}"
environment     = "${var.environment}"

azs             = "${var.azs}"
public_subnets  = "${var.public_subnets}"
private_subnets = "${var.private_subnets}"
}

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


output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "vpc_cidr" {
  value = "${module.vpc.vpc_cidr}"
}

output "public_subnets" {
  value = "${module.vpc.public_subnets}"
}

output "private_subnets" {
  value = "${module.vpc.private_subnets}"
}
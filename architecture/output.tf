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

output "aws_instance_nagios_public_ip" {
  value = aws_instance.nagios.public_ip
}

output "aws_instance_ansible_public_ip" {
  value = aws_instance.ansible.public_ip
}

output "bastion_public_ip" {
  value = var.bastion_public_ip
}

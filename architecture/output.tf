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

output "password" {
  value = "${aws_iam_user_login_profile.users.*.encrypted_password}"
}

output "data_ami" {
  value = data.aws_ami.centos.id
}

output "nagios_public_ip" {
  value = aws_instance.nagios.public_ip
}

output "ansible_public_ip" {
  value = aws_instance.ansible.public_ip
}

output "bastion_public_ip" {
  value = var.bastion_public_ip
}

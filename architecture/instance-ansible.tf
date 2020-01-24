resource "aws_instance" "ansible" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.bastion_key.key_name
  subnet_id     = module.vpc.public_subnets[1]
  vpc_security_group_ids = [aws_security_group.ssh.id,aws_security_group.web.id]
  

  tags = {
    Name        = "Nagios"
    Project     = var.project
    Environment = var.environment
  }
}



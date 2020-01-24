resource "aws_instance" "nagios" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.bastion_key.key_name
  subnet_id     = module.vpc.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.ssh.id]
  

  tags = {
    Name        = "Nagios"
    Project     = var.project
    Environment = var.environment
  }
}



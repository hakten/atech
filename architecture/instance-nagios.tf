resource "aws_instance" "nagios" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
  subnet_id     = module.vpc.public_subnets
  vpc_security_group_ids = [aws_security_group.ssh.id]
  

  tags = {
    Name        = Nagios
    Project     = var.project
    Environment = var.environment
  }
}



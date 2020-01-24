resource "aws_instance" "ansible" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.bastion_key.key_name
  subnet_id     = module.vpc.public_subnets[1]
  vpc_security_group_ids = [aws_security_group.ssh.id,aws_security_group.web.id]
  provisioner "remote-exec" {
    connection {
      host        = self.public_ip
      type        = "ssh"
      user        = var.user
      private_key = file("~/.ssh/id_rsa")
      }
      inline = [
        "sudo yum install -y epel-release",
        "sudo rpm -Uvh https://assets.nagios.com/downloads/ncpa/ncpa-latest.el7.x86_64.rpm",
        "sudo sed -i 's/community_string = mytoken/community_string = evolvecyber/g' /usr/local/ncpa/etc/ncpa.cfg",
        "sudo service ncpa_listener restart",
        ]
      } 

  tags = {
    Name        = "Ansible"
    Project     = var.project
    Environment = var.environment
  }
}



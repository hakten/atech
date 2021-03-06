resource "aws_instance" "instance" {
  ami               = data.aws_ami.centos.id
  instance_type     = var.instance_type
  key_name          = aws_key_pair.bastion_key.key_name
  vpc_security_group_ids = [aws_security_group.ssh_bastion.id,aws_security_group.ssh_ansible.id,aws_security_group.web.id,aws_security_group.nagios_client.id]
  
  provisioner "remote-exec" {
    connection {
      host          = self.public_ip
      type          = "ssh"
      user          = data.terraform_remote_state.main.outputs.user
      private_key   = file("~/.ssh/id_rsa")
      }
      inline = [
        "sudo yum install -y epel-release",
        "sudo rpm -Uvh https://assets.nagios.com/downloads/ncpa/ncpa-latest.el7.x86_64.rpm",
        "sudo sed -i 's/community_string = mytoken/community_string = evolvecyber/g' /usr/local/ncpa/etc/ncpa.cfg",
        "sudo service ncpa_listener restart",
        ]
      } 

  tags = {
    Name        = "${var.project}-${var.environment}"
    Project     = var.project
    Environment = var.environment
  }
}



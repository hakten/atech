resource "aws_key_pair" "bastion" {
  key_name   = "bastion-${var.project}"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
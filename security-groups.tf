resource "aws_security_group" "ssh_bastion" { 
  name        = "ssh_bastion" 
  description = "Allow SSH inbound from bastion" 
  vpc_id      = module.vpc.vpc_id

  ingress { 
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["${data.terraform_remote_state.main.bastion_public_ip}/32"]  

} 
  egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
} 

resource "aws_security_group" "ssh_ansible" { 
  name        = "ssh_ansible" 
  description = "Allow SSH inbound from ansible" 
  vpc_id      = module.vpc.vpc_id

  ingress { 
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["${data.terraform_remote_state.main.ansible_public_ip}/32"]  

} 
  egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
} 

resource "aws_security_group" "web" { 
  name        = "web" 
  description = "Allow web inbound traffic" 
  vpc_id      = module.vpc.vpc_id

  ingress { 
    from_port   = 80
    to_port     = 80 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   
} 
ingress { 
    from_port   = 443
    to_port     = 443
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   
} 
  egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
}

resource "aws_security_group" "nagios_client" { 
  name        = "nagios_client" 
  description = "Allow db inbound traffic" 
  vpc_id      = module.vpc.vpc_id

  ingress { 
    from_port   = 5693
    to_port     = 5693
    protocol    = "tcp" 
    cidr_blocks = ["${data.terraform_remote_state.main.ansible_public_ip}/32"]
} 
  ingress { 
    from_port   = 0
    to_port     = 0
    protocol    = "icmp" 
    cidr_blocks = ["${data.terraform_remote_state.main.ansible_public_ip}/32"]
}
  egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
}

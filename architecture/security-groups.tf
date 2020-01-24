resource "aws_security_group" "ssh" { 
  name        = "ssh" 
  description = "Allow SSH inbound traffic" 
  vpc_id      = module.vpc.vpc_id

  ingress { 
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = [var.bastion_public_ip]  

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
    cidr_blocks = aws_instance.nagios.public_ip
} 
  egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
}

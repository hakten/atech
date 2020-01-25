resource "aws_route53_record" "bastion" { 
  zone_id = var.zone_id 

  name = "${var.bastion_subdomain}.${var.domain}"  

  type    = "A" 
  ttl     = "300" 
  records = ["${var.bastion_public_ip}"] 
} 
resource "aws_instance" "instance1" {

  ami                         = var.instance1_ami 
  instance_type               = var.instance1_type
  vpc_id                      = var.vpc_id
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.sg_id
  associate_public_ip_address = true


  tags = var.instance1_tag
}



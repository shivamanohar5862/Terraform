resource "aws_internet_gateway" "my_ig" {
  vpc_id = var.vpc_id

  tags = var.ig_tag
}



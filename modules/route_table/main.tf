resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = var.gateway_id
  }

  tags = var.route_table_tag
}

resource "aws_route_table_association" "public_rt" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}


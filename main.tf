module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_tag  = var.vpc_tag
}

module "subnet" {
  source                   = "./modules/subnet"
  vpc_id                   = module.vpc.vpc_id
  subnet_cidr       = var.subnet_cidr
  subnet_availability_zone = var.subnet_availability_zone
  subnet_tag               = var.subnet_tag
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
  sg_name = var.sg_name
}

module "instance" {
  source        = "./modules/instance"
  instance1_ami  = var.instance1_ami
  instance1_type = var.instance1_type
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.subnet.subnet_id
  sg_id         = module.security_group.sg_id
  instance1_tag  = var.instance1_tag
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
  ig_tag = var.ig_tag
}

module "route_table" {
  source         = "./modules/route_table"
  vpc_id         = module.vpc.vpc_id
  gateway_id     = module.internet_gateway.gateway_id
  subnet_id      = module.subnet.subnet_id
  route_table_tag  = module.route_table.route_table_id
  route_table_id = module.route_table.public_route_table.id
}
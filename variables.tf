# variable for provider

variable "profile" {
  default = "test-user"
}

variable "access_key" {
  default = "AKIATNTWQ5JHOEWDF4W3"
}

variable "secret_key" {
  default = "1rrU1SJsObqeI8s2qgXBTx4p4Iam014mwSGawKgB"
}

variable "region" {
  default = "ap-south-1"
}


variable "vpc_cidr_block" {
  type    = string
  default = "10.10.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "tf-example"
  }
}

variable "subnet_cidr" {
  type    = string
  default = "10.10.10.0/24"
}

variable "subnet_tag" {
  type = map(any)
  default = {
    "Name" = "pub_subnet"
  }
}

variable "subnet_availability_zone" {
  type    = string
  default = "ap-south-1a"
}


variable "sg_name" {
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }
}

variable "instance1_ami" {
  type    = string
  default = "ami-025b4b7b37b743227"
}

variable "instance1_type" {
  type    = string
  default = "t2.micro"
}



variable "instance1_tag" {
  type = map(any)
  default = {
    "Name" = "test_instance"
  }
}


variable "ig_tag" {
  type = map(any)
  default = {
    "Name" = "my_igw"
  }
}

variable "route_table_tag" {
  type = map(any)
  default = {
    "Name" = "Public Route Table"
  }
}


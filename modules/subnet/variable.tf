variable "vpc_id" {
   type = string
}

variable "subnet_cidr" {
   type = string
   default = "10.10.10.0/24"
}

variable "subnet_tag" {
   type = map(any)
   default = {
     "Name" = "pub_subnet"
	 }
}

variable "subnet_availability_zone" {
   type = string
   default = "ap-south-1a"
}
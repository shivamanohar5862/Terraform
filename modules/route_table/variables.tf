variable "vpc_id" {
   type = string
}

variable "gateway_id" {
   type = string
}

variable "route_table_tag" {
   type = map(any)
   default = {
     "Name" = "public_route_table"
   }
}

variable "subnet_id" {
   type = string
}

variable "route_table_id" {
   type = string
}
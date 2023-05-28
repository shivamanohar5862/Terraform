variable "vpc_id" {
   type = string
}

variable "ig_tag" {
   type = map(any)
   default = {
     "Name" = "my_igw"
   }
}
variable "vpc_cidr_block" {
   type = string
   default = "10.10.0.0/16"
}

variable "vpc_tag" {
   type = map(any)
   default = {
      "Name" =  "tf-example"
   }
}
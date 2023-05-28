variable "instance1_ami" {
   type = string
   default = "ami-025b4b7b37b743227"
}

variable "instance1_type" {
   type = string
   default = "t2.micro"
}



variable "instance1_tag" {
   type = map(any) 
   default = {
	    "Name" = "test-server"
	} 
 }
 
 variable "vpc_id" {
   type = string
}

variable "subnet_id" {
   type = string
}

variable "sg_id" {
    type = string
}
variable "ami_id" {
    type  = string
    default = "ami-090252cbe067a9e58"   
}

variable "vpc_security_group_ids" {
    type = list
    default = ["sg-04a8063bf88d0ec0c"]  
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "tags" {
   type = map
    default = {} 
}
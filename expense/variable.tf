# ec2 variables
variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}

variable "image_id" {
  type        = string #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "instance_type" {
    type = string
    description = "t2.micro"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        terraform = "true"
    }

}

# SG Veriables
variable "sg_name" {
    type = string
    default = "allow_ssh"
  
}

variable "sg_description" {
    default = "allowing port 22"
  
}
variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}


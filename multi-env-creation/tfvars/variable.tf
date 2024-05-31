variable "instance_name" {
    type = map
    default = {
        # db-dev = "t3.micro"
        # backend-dev = "t2.micro"
        # frountend-dev = "t2.micro"
    }
  
}

variable "environment" {
  # default = "dev"
}


variable "common_tags" {
    type = map
    default = {
        Project = "expance"
        terraform = "true"
    }

}


variable "domain_name" {
    default = "anuprasad.online"
}

variable "zone_id" {
    default = "Z037680029TE3IP9QSHTS"
}
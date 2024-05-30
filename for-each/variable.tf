variable "instance_name" {
    type = map
    default = {
        db = "t3.micro"
        backend = "t2.micro"
        frountend = "t2.micro"
    }
  
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
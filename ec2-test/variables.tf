variable "image_id" {
  type = string
  default = "ami-090252cbe067a9e58"
  
}

variable "instance_type" {
  type = string
  default = "t3.micro"
  
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
}
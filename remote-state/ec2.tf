resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-04a8063bf88d0ec0c"]
    instance_type = "t3.micro"

    tags = {
      Name = "db"
    }
  
}
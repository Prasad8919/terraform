resource "aws_instance" "db" {

    ami = var.image_id
    instance_type = var.instance_type
    tags = var.tags

}
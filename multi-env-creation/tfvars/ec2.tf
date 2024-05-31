resource "aws_instance" "expense" {
    for_each = var.instance_name # each.key and each.value
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-04a8063bf88d0ec0c"]
    instance_type = each.value # have created deatils in verable file it will take 
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }

    )

}
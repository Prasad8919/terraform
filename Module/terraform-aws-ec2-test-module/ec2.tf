module "ec2-test" {
    source = "../terraform-aws-ec2-code"
    instance_type = "t3.small"
    tags = {
        Name= "Module-Test"
        Terraform = "true"
    }
}
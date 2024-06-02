module "vpc" {
    source = "../terraform-aws-vpc-code"
    project_name = var.project_name
    common_tags = var.common_tags   

}    
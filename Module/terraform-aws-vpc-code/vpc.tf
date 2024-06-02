# VPC
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge(
    var.common_tags,
    var.vpc_tags,
    {
        Name = local.resource_name
    }
  )
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id  # igw assosiation with vpc

  tags = merge(
    var.common_tags,
    var.igw_tags,
    {
        Name = local.resource_name
    }
  )
}

resource "aws_subnet" "public" { # first name is public[0], second name is public[1]
  count = length(var.public_subnet_cidrs)
  availability_zone = local.az_names[count.index]
  vpc_id     = aws_vpc.main.id
  map_public_ip_on_launch = true
  cidr_block = var.public_subnet_cidrs[count.index]

  tags = merge(
    var.common_tags,
    var.public_subnet_cidr_tags,
    {
        Name = "${local.resource_name}-public-${local.az_names[count.index]}"
    }
  )
}

resource "aws_subnet" "private" { # first name is public[0], second name is public[1]
  count = length(var.private_subnet_cidrs)
  availability_zone = local.az_names[count.index]
  vpc_id     = aws_vpc.main.id
  map_public_ip_on_launch = true
  cidr_block = var.private_subnet_cidrs[count.index]

  tags = merge(
    var.common_tags,
    var.private_subnet_cidr_tags,
    {
        Name = "${local.resource_name}-private-${local.az_names[count.index]}"
    }
  )
}
resource "aws_subnet" "my_subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet_cidr
    availability_zone = "us-east-1a"

    tags = var.subnet_name
}

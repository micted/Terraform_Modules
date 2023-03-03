module "vpc" {

    source = "./modules/aws_vpc"
    vpc_cidr = var.vpc_cidr
  
}

module "subnet" {

    source = "./modules/aws_subnet"
  
}

module "sg" {

    source = "./modules/aws_sg"
  
}

module "nic" {

    source = "./modules/aws_nic"
  
}

module "instance" {

    source = "./modules/aws_instance"
  
}



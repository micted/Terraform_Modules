resource "aws_security_group" "allow_tls" {

    name = "allow_tls"
    description = "ALLOW TLS INBOUND TRAFFIC"
    vpc_id = var.vpc_id

    ingress {
        description = "TLS from VPC"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = [aws_vpc.my_vpc.cidr_block]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = var.sg_name
  
}


resource "aws_security_group" "allow_all" {
    name = var.securityGroup_name
    description = "allowing all ports"

    ingress {
    description      = "Allowing all inbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.securityGroup_cidr
}

egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.securityGroup_cidr
  }
}
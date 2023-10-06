# This creates EC2 instance in default VPC.
resource "aws_instance" "my-wish-I-can-decide" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.allow_all.name]
  tags = var.tags
}
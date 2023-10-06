variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "securityGroup_name" {
    default = "allow-all"
}

variable "securityGroup_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags" {
type = map
default = {
    Name = "MongoDB"
    Environment = "Dev"
    Terraform = "true"
    Project = "Roboshop"
    Component = "MongoDB"
  }
} 
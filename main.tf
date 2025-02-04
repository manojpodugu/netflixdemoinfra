provider "aws" {
region = "eu-north-1"
}

resource "aws_instance" "one" {
count = 3
ami = "ami-0d266d33ca564bca7"
instance_type = "t3.micro"
key_name = "swiggy"
vpc_security_group_ids = ["sg-0e1f0be2442921468"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["ansible1","dev1","test1"]
}




provider "aws" {
  region = "us-east-1"
 
}

variable "vpc_cidr_block" {
  description = "value of vpc cidr block"
}

variable "subnet_cidr_block" {
  description = "value of subnet cidr block"
}
resource "aws_vpc" "dev_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "dev_subnet" {
    vpc_id= aws_vpc.dev_vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = "us-east-1a"
}



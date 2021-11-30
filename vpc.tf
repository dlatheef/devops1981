resource "aws_vpc" "IBM-VPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "IBM-VPC"
  }
}
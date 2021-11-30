resource "aws_subnet" "IBM-VPC-subnet1" {
  vpc_id     = aws_vpc.IBM-VPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  
    tags = {
    Name = "IBM-VPC-subnet1"
}
}

resource "aws_subnet" "IBM-VPC-subnet2" {
  vpc_id     = aws_vpc.IBM-VPC.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  
  tags = {
    Name = "IBM-VPC-subnet2"
}
}
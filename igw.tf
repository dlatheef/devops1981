resource "aws_internet_gateway" "IBM-VPC-IGW" {
  vpc_id = aws_vpc.IBM-VPC.id

  depends_on = [
   aws_vpc.IBM-VPC
  ]

  tags = {
    Name = "IBM-VPC-IGW"
  }
}
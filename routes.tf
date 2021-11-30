resource "aws_route_table" "IBM-VPC-PB-route1" {
  vpc_id = "${aws_vpc.IBM-VPC.id}"
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.IBM-VPC-IGW.id}"
  }
  tags = {
    Name = "IBM-vpc-PB-route1"
  }
}

resource "aws_route_table" "IBM-VPC-PVT-route2" {
  vpc_id = "${aws_vpc.IBM-VPC.id}"
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.IBM-VPC-IGW.id}"
  }
  tags = {
    Name = "IBM-vpc-PVT-route1"
  }
}
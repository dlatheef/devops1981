resource "aws_route_table_association" "IBM-VPC-PB-route1-asso" {
  subnet_id      =  aws_subnet.IBM-VPC-subnet1.id
  route_table_id =  aws_route_table.IBM-VPC-PB-route1.id
  }
  
  resource "aws_route_table_association" "IBM-VPC-PVT-route1-asso" {
  subnet_id      =  aws_subnet.IBM-VPC-subnet2.id
  route_table_id =  aws_route_table.IBM-VPC-PVT-route2.id
  }
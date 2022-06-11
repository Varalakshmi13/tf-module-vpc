resource "aws_route_table" "route-table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.DEFAULT_VPC_CIDR
    vpc_peering_connection_id = aws_vpc_peering_connection.peer-connection.id
  }



  tags = {
    Name = "${var.ENV}-route-table"
  }
}
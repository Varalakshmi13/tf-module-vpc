resource "aws_subnet" "main" {
  count = length(var.SUBNET_CIDR)  
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.SUBNET_CIDR, count.index)

  tags = {
    Name = "Main"
  }
}
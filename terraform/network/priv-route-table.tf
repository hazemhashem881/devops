resource "aws_route_table" "priv_route" {
  vpc_id = aws_vpc.myvpc.id

  route = []

  tags = {
    Name = "priv_route"
  }
}

## aws_route_table_association with subnet ##

resource "aws_route_table_association" "asso_priv_subnet" {
  subnet_id      = aws_subnet.priv_subnet.id
  route_table_id = aws_route_table.priv_route.id
}
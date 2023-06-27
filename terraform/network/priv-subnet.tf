resource "aws_subnet" "priv_subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.priv_subnet

  tags = {
    Name = "Private Subnet"
  }
}
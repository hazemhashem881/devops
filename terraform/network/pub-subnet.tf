resource "aws_subnet" "pub_subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.pub_subnet

  tags = {
    Name = "Public Subnet"
  }
}
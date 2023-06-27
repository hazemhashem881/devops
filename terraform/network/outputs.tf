output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "pub_subnet_id" {
  value = aws_subnet.pub_subnet.id
}

output "priv_subnet_id" {
  value = aws_subnet.priv_subnet.id
}
output "vpc_cidr" {

  value = aws_vpc.myvpc.cidr_block
}

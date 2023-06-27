#------create aws ec2 ---

resource "aws_instance" "bastion" {
  ami                     = var.ami
  instance_type           = var.instance_type
  subnet_id = module.network.pub_subnet_id
  key_name = aws_key_pair.public_key_pair.key_name
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name ="bastion"
  }

}


# Private ec2
resource "aws_instance" "application" {
  ami                     = var.ami
  instance_type           = var.instance_type
  subnet_id = module.network.priv_subnet_id
  key_name = aws_key_pair.public_key_pair.key_name
  associate_public_ip_address = false
  vpc_security_group_ids = [aws_security_group.allow_ssh_p300.id]
  tags = {
    Name ="application"
  }

}
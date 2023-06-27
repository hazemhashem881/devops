module "network" {
  source = "./network"
  vpc_cidr=var.vpc_cidr
  region=var.region
  pub_subnet=var.pub_subnet
  priv_subnet=var.priv_subnet
  ami=var.ami
  instance_type=var.instance_type
}
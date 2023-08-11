module "mainvpc" {
  source = "./modules/vpc"
  cidr_block = var.main_vpc_cidr
}
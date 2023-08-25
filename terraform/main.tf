module "mainvpc" {
  source = "./modules/vpc"
  cidr_block = var.main_vpc_cidr
}

module "web_server" {
  source       = "./modules/ec2_instance"
  ami          = "ami-0f3d9639a5674d559"
  instance_type = "t2.micro"
  name         = "CaravanBookingWebServer"
  subnet_id = module.mainvpc.subnet_id
  tags = {
    Environment = "Production"
    Project     = "CaravanBooking"
  }
}
module "mainvpc" {
  source = "./modules/vpc"
  cidr_block = var.main_vpc_cidr
}

# module "web_server" {
#   source       = "./modules/ec2_instance"
#   ami          = "ami-0c55b159cbfafe1f0"
#   instance_type = "t2.micro"
#   name         = "CaravanBookingWebServer"
#   tags = {
#     Environment = "Production"
#     Project     = "CaravanBooking"
#   }
# }
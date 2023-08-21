variable "main_vpc_cidr" {
    type = string
    default = "10.10.0.0/20"
  
}
variable "region-master" {
  type    = string
  default = "eu-west-2"
}

variable "region-worker" {
  type    = string
  default = "eu-west-1"
}

variable "public_dns_name" {
  type    = string
  default = "mk1micros.co.uk."
}

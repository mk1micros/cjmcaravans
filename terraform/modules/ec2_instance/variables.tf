variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {
  type = string
}
variable "name" {}
variable "tags" {
  type    = map(string)
  default = {}
}
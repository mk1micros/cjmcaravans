variable "ami" {}
variable "instance_type" {}
variable "name" {}
variable "tags" {
  type    = map(string)
  default = {}
}
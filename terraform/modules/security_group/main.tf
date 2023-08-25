resource "aws_security_group_rule" "example" {
  name = var.name
  vpc_id = var.vpc_id

  ingress {
  from_port         = var.from_port
  to_port           = var.to_port
  protocol          = var.prot
  cidr_blocks       = var.vpc_cidr
  security_group_id = "sg-123456"
  }
}
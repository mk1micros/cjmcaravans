resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = merge(
    var.tags,
    {
      Name = var.name
    }
  )

  // ... other attributes
}
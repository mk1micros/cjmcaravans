resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = merge(
    var.tags,
    {
      Name = var.name
    }
  )

  // ... other attributes
}
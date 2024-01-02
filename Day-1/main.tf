resource "aws_instance" "example" {
  ami           = var.ami-name
  instance_type = var.instance-type
}
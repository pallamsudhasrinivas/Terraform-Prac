variable "ami-name" {
  description = "ami name"
  default = "ami-079db87dc4c10ac91"
}

variable "aws_region" {
  description = "AWS region where the EC2 instance will be launched"
  default = "us-east-1"
}

variable "instance-type" {
  description = "EC2 instance type"
  default = "t2.micro"
}
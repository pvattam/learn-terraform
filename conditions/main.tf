variable "instance_type" {
  default = null
}

variable "create_instance" {
  default = false
}

resource "aws_instance" "test" {
  count = var.create_instance ? 1 : 0
  ami = "ami-03265a0778a880afb"
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}
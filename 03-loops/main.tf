variable "instances" {
  default = ["frontend", "backend", "mysql"]
}

resource "null_resource" "sample"{
  count = length(var.instances)
}

variable "instances1" {
  default = {
    frontend = {
      name= "frontend"
      instance_type = "t3.micro"
    }
    backend = {
      name= "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name= "mysql"
      instance_type = "t3.micro"
    }
  }
}

resource "null_resource" "sample1" {
  for_each = var.instances1
}
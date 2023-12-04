env = "dev"
ami = "ami-03265a0778a880afb"
sg_id = ["sg-05c45d4106139409c"]
zone_id = "Z017218723D63YD2W9JSZ"

components = {
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

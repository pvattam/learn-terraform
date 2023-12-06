module "expense" {
  for_each = var.components
  source = "./module"

  ami      = var.ami
  name = each.value["name"]
  env = var.env
  instance_type = each.value["instance_type"]
  sg_id = var.sg_id
  zone_id = var.zone_id
}
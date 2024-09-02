module "createInstanceAws" {
  source              = "/modules/createInstanceAws"
  region              = var.region
  ami                 = var.ami
  instance_type       = var.instance_type
  key_name            = var.key_name
  security_group_name = var.security_group_name
  user_data           = var.user_data
  instance_name       = var.instance_name
}

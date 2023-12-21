module "rg" {
  source = "../modules/resource-group"

  resource_group_name     = "rg-${var.env}"
  resource_group_location = "East US"
  env                     = var.env
}

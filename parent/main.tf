module "radha" {
  source = "../child/1rg"
  mira   = var.mira
}
module "jyada" {
  depends_on = [module.radha]
  source     = "../child/2vnet"
  rama       = var.rama
}
module "sadha" {
  depends_on = [module.jyada, module.madha]
  source     = "../child/3nic"
  bhim       = var.bhim
}
module "madha" {
  depends_on = [module.radha]
  source     = "../child/4pip"
  najiya     = var.najiya
}
module "sidha" {
  depends_on = [module.radha]
  source     = "../child/5nsg"
  sipra      = var.sipra
  sipr       = module.sadha.sipr
}
module "jiya" {
  depends_on = [module.radha, module.sadha]
  source     = "../child/6server"
  server     = var.server
}
module "jiva" {
  depends_on = [module.radha]
  source     = "../child/7database"
  sequal     = var.sequal
}
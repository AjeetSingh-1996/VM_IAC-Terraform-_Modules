module "rg_module" {
  source = "../Dev_Environment/resource_group"
  rgname = var.m_rgname
}
module "st_module" {
  source     = "../Dev_Environment/storage_account"
  storage    = var.m_storage
  depends_on = [module.rg_module]
}
module "vnet_module" {
  source     = "../Dev_Environment/vnet"
  m_ajvnet   = var.m_ajvnet
  depends_on = [module.rg_module]
}
module "sn_module" {
  source     = "../Dev_Environment/subnet"
  m_ajsn     = var.m_ajsn
  depends_on = [module.vnet_module]
}
module "nic_module" {
  source = "../Dev_Environment/Network_Interface"
  aj_nic = var.md_nic
  depends_on = [ module.sn_module , module.ip_module , module.vnet_module ]
}
module "ip_module" {
  source = "../Dev_Environment/public"
  aj_pip = var.m_aj_pip
  depends_on = [ module.rg_module , module.vnet_module ]
  
}
module "vm_module" {
  source = "../Dev_Environment/Virtual_Machine"
  ajvm = var.m_aj_vm
  depends_on = [ module.nic_module ]
  
}
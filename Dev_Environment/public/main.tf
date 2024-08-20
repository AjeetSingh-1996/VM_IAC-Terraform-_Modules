resource "azurerm_public_ip" "aj_pip" {
    for_each = var.aj_pip
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
}
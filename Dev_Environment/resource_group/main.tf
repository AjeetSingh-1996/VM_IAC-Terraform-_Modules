resource "azurerm_resource_group" "rgname" {
    for_each = var.rgname
    name = each.value.name
    location = each.value.location
  
}
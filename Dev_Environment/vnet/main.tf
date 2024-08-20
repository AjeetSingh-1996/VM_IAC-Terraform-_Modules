resource "azurerm_virtual_network" "ajvnet" {
    for_each = var.m_ajvnet
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    address_space = each.value.address_space
     
}
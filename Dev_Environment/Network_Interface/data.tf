data "azurerm_subnet" "subdata" {
    name = "ajsn"
    resource_group_name = "ajrg"
    virtual_network_name = "ajvnet"
  
}
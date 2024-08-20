m_rgname = {
  rg1 = {
    name     = "ajrg"
    location = "westus"
  }
  # rg2 = {
  #     name = "bhondu"
  #     location = "centralindia"
  # }
}

m_storage = {
  stg1 = {
    name                     = "ajstg1"
    location                 = "west us"
    resource_group_name      = "ajrg"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

m_ajvnet = {
  vnet1 = {
    name                = "ajvnet"
    location            = "west us"
    resource_group_name = "ajrg"
    address_space       = ["10.0.0.0/16"]
  }
}

m_ajsn = {
  sn1 = {
    name                 = "ajsn"
    resource_group_name  = "ajrg"
    virtual_network_name = "ajvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

  md_nic={
   nic = { 
  name                = "aj_nic"
  location            =  "west us"
  resource_group_name =  "ajrg"

  ip_configuration = {
    ajname                          = "aj_ipc"
    # subnet_id                     = data.azurerm_subnet.subdata.id
    private_ip_address_allocation = "Dynamic"
  }
}
  }

m_aj_pip = {
  pip ={
  name                = "aj_pip"
  resource_group_name = "ajrg"
  location            = "west us"
  allocation_method   = "Static"
}
}

 m_aj_vm = {
  vm1 = { 
    name                = "ajvm"
  resource_group_name = "ajrg"
  location            = "west us"
  size                = "Standard_F2"

  admin_username      = "adminuser"
  admin_password = "password@123"
  }
 }
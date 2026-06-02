mira = {
  rg1 = {
    rg_name  = "RG-PROD-INDIA"
    location = "central india"
  }
}
rama = {
  vnet1 = {
    vnet_name     = "prod-vnet"
    rg_name       = "RG-PROD-INDIA"
    location      = "central india"
    address_space = ["10.0.0.0/16"]
    subnet = {
      subnet1 = {
        address_prefix = ["10.0.1.0/24"]
        subnet_name    = "Web-Subnet"

      }
      subnet2 = {
        address_prefix = ["10.0.2.0/24"]
        subnet_name    = "App-Subnet"
      }
      subnet3 = {
        address_prefix = ["10.0.3.0/24"]
        subnet_name    = "DB-Subnet"
      }
    }

  }
}
bhim = {
  nic1 = {
    nic_name    = "front-nic"
    rg_name     = "RG-PROD-INDIA"
    location    = "central india"
    subnet_name = "Web-Subnet"
    vnet_name   = "prod-vnet"
    pip_name    = "prob_pip"
  }
  nic2 = {
    nic_name    = "backend-nic"
    rg_name     = "RG-PROD-INDIA"
    location    = "central india"
    subnet_name = "App-Subnet"
    vnet_name   = "prod-vnet"
    pip_name    = "prod_pip"
  }
}
najiya = {
  pip1 = {
    pip_name          = "prob_pip"
    rg_name           = "RG-PROD-INDIA"
    location          = "central india"
    allocation_method = "Static"
    sku               = "Standard"
  }
  pip2 = {
    pip_name          = "prod_pip"
    rg_name           = "RG-PROD-INDIA"
    location          = "central india"
    allocation_method = "Static"
    sku               = "Standard"
  }
}
sipra = {
  nsg1 = {
    nsg_name = "fvmnsg"
    rg_name  = "RG-PROD-INDIA"
    location = "central india"

    security_rule = {
      s1 = {
        srule_name                 = "allow_ssh"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      }
      s2 = {
        srule_name                 = "http"
        priority                   = 110
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      }
      s3 = {
        srule_name                 = "https"
        priority                   = 120
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      }
    }
  }
}
server = {
  server1 = {
    vm_name                         = "front-vm"
    rg_name                         = "RG-PROD-INDIA"
    location                        = "central india"
    size                            = "Standard_B1s"
    nic_name                        = "front-nic"
    admin_username                  = "saurabh"
    admin_password                  = "saurabh@1234567"
    disable_password_authentication = false
    disk_caching                    = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"

  }
  server2 = {
    vm_name                         = "backend-vm"
    rg_name                         = "RG-PROD-INDIA"
    location                        = "central india"
    size                            = "Standard_B1s"
    nic_name                        = "backend-nic"
    admin_username                  = "saurav"
    admin_password                  = "saurabh@7777"
    disable_password_authentication = false
    disk_caching                    = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
  }
}
sequal = {
  ssl1 = {
    mssql_name                   = "prod770sqlserver"
    rg_name                      = "RG-PROD-INDIA"
    db_name                      = "prod-db"
    location                     = "central india"
    version                      = "12.0"
    administrator_login          = "saurabh"
    administrator_login_password = "yuvan@12345"
  }
  ssl2 = {

    mssql_name                   = "dev077sql-server"
    db_name                      = "dev-db"
    rg_name                      = "RG-PROD-INDIA"
    location                     = "Central India"
    version                      = "12.0"
    administrator_login          = "saurabh"
    administrator_login_password = "yuvan@12345"
  }
}
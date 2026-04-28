resource "azurerm_public_ip" "public_ip" {
  name                = "inventory-public-ip"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {
    Project     = "InventoryCloudProject"
    Environment = "Development"
    Team        = "KelompokCloud"
  }
}

resource "azurerm_public_ip" "public_ip_2" {
  name                = "inventory-public-ip-2"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {
    Project     = "InventoryCloudProject"
    Environment = "Development"
    Team        = "KelompokCloud"
  }
}

resource "azurerm_network_interface" "nic" {
  name                = "inventory-nic"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.public_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }

  tags = {
    Project     = "InventoryCloudProject"
    Environment = "Development"
    Team        = "KelompokCloud"
  }
}

resource "azurerm_network_interface" "nic2" {
  name                = "inventory-nic-2"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.public_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip_2.id
  }

  tags = {
    Project     = "InventoryCloudProject"
    Environment = "Development"
    Team        = "KelompokCloud"
  }
}

resource "azurerm_network_interface_security_group_association" "nsg_connect_2" {
  network_interface_id      = azurerm_network_interface.nic2.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_linux_virtual_machine" "vm2" {
  name                = "inventory-vm-2"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  size                = "Standard_Ds1_v2"
  admin_username      = var.admin_username

  network_interface_ids = [
    azurerm_network_interface.nic2.id
  ]

  admin_ssh_key {
    username   = var.admin_username
    public_key = file("C:/Users/USER/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  disable_password_authentication = true

  tags = {
    Project     = "InventoryCloudProject"
    Environment = "Development"
    Team        = "KelompokCloud"
  }
}

resource "azurerm_public_ip" "public_gateway" {
  name                = "istio-public-gateway"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}


resource "azurerm_network_interface" "private_gateway" {
  name                = "istio-private-gateway"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.ingress_subnet_id
    private_ip_address_allocation = "Static"
    private_ip_address            = var.private_gateway_reserved_ip
  }
}


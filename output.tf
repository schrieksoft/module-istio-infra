output public_gateway_ip {
    value = azurerm_public_ip.public_gateway.ip_address
}
output public_gateway_ip {
    value = var.private_gateway_reserved_ip
}
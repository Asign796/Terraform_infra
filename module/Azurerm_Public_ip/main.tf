resource "azurerm_public_ip" "appgw_pip" {
  for_each = var.appgw

  name                = each.value.public_ip_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}


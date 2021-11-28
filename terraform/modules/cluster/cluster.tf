resource "azurerm_resource_group" "micro-python" {
  name     = "micro-python"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "micro-python" {
  name                = "micro-python"
  location            = azurerm_resource_group.micro-python.location
  resource_group_name = azurerm_resource_group.micro-python.name
  dns_prefix          = "micro-python"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  service_principal  {
    client_id = var.serviceprinciple_id
    client_secret = var.serviceprinciple_key
  }

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_container_registry" "micro-python" {
  name                  = "micropython"
  location              = azurerm_resource_group.micro-python.location
  resource_group_name   = azurerm_resource_group.micro-python.name
  sku                 = "Premium"
  admin_enabled       = true
}

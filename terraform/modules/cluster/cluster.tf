resource "azurerm_resource_group" "aks-getting-started" {
  name     = "aks-getting-started"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks-getting-started" {
  name                  = "aks-getting-started"
  location              = azurerm_resource_group.aks-getting-started.location
  resource_group_name   = azurerm_resource_group.aks-getting-started.name
  dns_prefix            = "aks-getting-started"            
  
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
    type       = "VirtualMachineScaleSets"
    os_disk_size_gb = 100
  }

  service_principal  {
    client_id = var.serviceprinciple_id
    client_secret = var.serviceprinciple_key
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "aks-getting-started" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks-getting-started.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_container_registry" "aks-getting-started" {
  name                  = "aksgettingstarted"
  location              = azurerm_resource_group.aks-getting-started.location
  resource_group_name   = azurerm_resource_group.aks-getting-started.name
  sku                 = "Premium"
  admin_enabled       = false
}
resource "azurerm_container_registry" "aks-getting-started2" {
  name                  = "aksgettingstarted2"
  location              = azurerm_resource_group.aks-getting-started.location
  resource_group_name   = azurerm_resource_group.aks-getting-started.name
  sku                 = "Premium"
  admin_enabled       = true
}

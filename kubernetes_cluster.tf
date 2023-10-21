resource "azurerm_kubernetes_cluster" "MontrealCollege" {
  for_each            = { for index,cluster in local.cluster_names : index => cluster }
  name                = "${var.convention}-${each.value}"
  location            = azurerm_resource_group.mcit.location
  resource_group_name = azurerm_resource_group.mcit.name
  dns_prefix          = "${var.prefix}-k8s"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

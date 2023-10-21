locals {
  cluster_names = ["MontrealCollegeCluster1","MontrealCollegeCluster1","MontrealCollegeCluster2","MontrealCollegeCluster3","MontrealCollegeCluster4"]

    backend_address_pool_name      = "${azurerm_virtual_network.vnetmcit.name}-beap"
    frontend_port_name             = "${azurerm_virtual_network.vnetmcit.name}-feport"
    frontend_ip_configuration_name = "${azurerm_virtual_network.vnetmcit.name}-feip"
    http_setting_name              = "${azurerm_virtual_network.vnetmcit.name}-be-htst"
    listener_name                  = "${azurerm_virtual_network.vnetmcit.name}-httplstn"
    request_routing_rule_name      = "${azurerm_virtual_network.vnetmcit.name}-rqrt"
    redirect_configuration_name    = "${azurerm_virtual_network.vnetmcit.name}-rdrcfg"
}


resource "azurerm_resource_group" "mcit" {
  name     = "rg-${var.convention}"
  location = var.location
}

locals {
  cluster_names = ["MontrealCollegeCluster1","MontrealCollegeCluster1","MontrealCollegeCluster2","MontrealCollegeCluster3","MontrealCollegeCluster4"]

}


resource "azurerm_resource_group" "mcit" {
  name     = "rg-${var.convention}"
  location = var.location
}

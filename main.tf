#locals {
#  cluster_names = ["MontrealCollegeCluster1","MontrealCollegeCluster2","MontrealCollegeCluster3","MontrealCollegeCluster4"]
#
#}


locals{
    kubernetes_file_list = [for f in fileset("${path.module}/files", "[^_]*.yaml") : yamldecode(file("${path.module}/files/${f}"))]


    cluster_names = flatten([
      for cluster_list in local.kubernetes_file_list:[
        for cluster in try(cluster_list.kubernetes_list,[]):{
          name=cluster.name
        }
      ]
    ])
}


resource "azurerm_resource_group" "mcit" {
  name     = "rg-${var.convention}"
  location = var.location
}

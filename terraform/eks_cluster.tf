resource "nirmata_cluster" "eks-cluster-tf-999" {
  name         = "eks-cluster-tf-999"
  cluster_type = "eks-demo-type"
  labels       = { foo = "bar" }
  nodepools {
    node_count          = 1
    enable_auto_scaling = false
    min_count           = 1
    max_count           = 4

  }
  delete_action = "delete"
}

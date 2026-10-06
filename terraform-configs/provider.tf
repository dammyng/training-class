

provider "kubernetes" {
  host                   = minikube_cluster.my_minikube_docker.host
  client_certificate     = minikube_cluster.my_minikube_docker.client_certificate
  client_key             = minikube_cluster.my_minikube_docker.client_key
  cluster_ca_certificate = minikube_cluster.my_minikube_docker.cluster_ca_certificate
}

provider "helm" {
  kubernetes {
    host                   = minikube_cluster.my_minikube_docker.host
    client_certificate     = minikube_cluster.my_minikube_docker.client_certificate
    client_key             = minikube_cluster.my_minikube_docker.client_key
    cluster_ca_certificate = minikube_cluster.my_minikube_docker.cluster_ca_certificate
  }
}

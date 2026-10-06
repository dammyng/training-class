terraform {
    required_providers{
        kubernetes = {
            source  = "hashicorp/kubernetes"
            version = "~> 2.0"
        }
        minikube = {
            source = "scott-the-programmer/minikube"
            version = "0.4.2"
        }
    }
}

provider "minikube" {
    kubernetes_version = "v1.30.0"
}

resource "minikube_cluster" "my_minikube_docker" {
    driver = "docker"
    addons =[
        "default-storageclass",
        "storage-provisioner"
    ]
}
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
            helm = {
      source  = "hashicorp/helm"
      version = "~> 2.14"
    }
    }
}

provider "minikube" {
    kubernetes_version = "v1.30.0"
}


resource "minikube_cluster" "my_minikube_docker" {
  cluster_name        = "terraform-provider-minikube"
  driver              = "docker"
  memory              = "4096"
  cpus                = 2
  auto_pause_interval = 0     # prevents the auto-pause shutdowns
  wait_timeout        = 10
  addons = [
    "default-storageclass",
    "storage-provisioner",
    "cni",                    # required for pod networking
  ]
}
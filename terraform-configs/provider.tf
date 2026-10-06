provider kubernetes {
    host= minikube_cluster.my_minikube_docker.kubeconfig.0.host
    client_certificate = base64decode(minikube_cluster.my_minikube_docker.kubeconfig.0.client_certificate)
    client_key = base64decode(minikube_cluster.my_minikube_docker.kubeconfig.0.client_key)
    cluster_ca_certificate = base64decode(minikube_cluster.my_minikube_docker.kubeconfig.0.cluster_ca_certificate)
}
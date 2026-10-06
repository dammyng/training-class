resource "helm_release" "argocd" {
  name             = "argocd"
  chart            = "argo-cd"
  repository       = "https://argoproj.github.io/argo-helm"
  version          = "7.7.11"
  namespace        = "argocd"
  create_namespace = true
depends_on = [minikube_cluster.my_minikube_docker]
  values = [
    file("${path.module}/argocd-values.yaml")
  ]

  timeout          = 1600
  atomic           = true
  cleanup_on_fail  = true
}
provider "kubectl" {
  config_path = "~/.kube/config-kind"
}

resource "kubectl_manifest" "nodejs-app" {
  yaml_body = file("node-app-deploy.yaml")
}


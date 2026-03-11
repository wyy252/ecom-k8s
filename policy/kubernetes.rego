package kubernetes

import rego.v1

deny contains msg if {
  input.kind == "Deployment"
  not input.spec.strategy.type
  msg := sprintf("%s must define a deployment strategy", [input.metadata.name])
}

deny contains msg if {
  input.kind == "Deployment"
  input.spec.strategy.type != "RollingUpdate"
  msg := sprintf("%s must use RollingUpdate", [input.metadata.name])
}

deny contains msg if {
  input.kind == "Deployment"
  container := input.spec.template.spec.containers[_]
  not container.resources.requests.cpu
  msg := sprintf("%s must define cpu requests", [input.metadata.name])
}

deny contains msg if {
  input.kind == "Deployment"
  container := input.spec.template.spec.containers[_]
  not container.resources.requests.memory
  msg := sprintf("%s must define memory requests", [input.metadata.name])
}

deny contains msg if {
  input.kind == "Deployment"
  container := input.spec.template.spec.containers[_]
  not container.resources.limits.cpu
  msg := sprintf("%s must define cpu limits", [input.metadata.name])
}

deny contains msg if {
  input.kind == "Deployment"
  container := input.spec.template.spec.containers[_]
  not container.resources.limits.memory
  msg := sprintf("%s must define memory limits", [input.metadata.name])
}

deny contains msg if {
  input.kind == "Service"
  input.metadata.name == "ecom-database"
  input.spec.type != "ClusterIP"
  msg := "ecom-database service must use ClusterIP"
}

deny contains msg if {
  input.kind == "Service"
  input.metadata.name == "ecom-frontend"
  input.spec.type != "NodePort"
  msg := "ecom-frontend service must use NodePort"
}

deny contains msg if {
  input.kind == "Service"
  input.metadata.name == "ecom-product-service"
  input.spec.type != "NodePort"
  msg := "ecom-product-service service must use NodePort"
}

deny contains msg if {
  input.kind == "Service"
  input.metadata.name == "ecom-order-service"
  input.spec.type != "NodePort"
  msg := "ecom-order-service service must use NodePort"
}
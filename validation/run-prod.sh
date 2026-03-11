set -e
mkdir -p validation-output

kubeconform -summary -strict \
  base/common/prod-namespace.yaml \
  base/common/prod-resourcequota.yaml \
  base/database/configmap.yaml \
  base/database/secret.yaml \
  base/database/pv.yaml \
  base/database/pvc.yaml \
  base/database/deployment.yaml \
  base/database/service.yaml \
  base/product-service/deployment.yaml \
  base/product-service/service-prod.yaml \
  base/order-service/deployment.yaml \
  base/order-service/service-prod.yaml \
  base/frontend/deployment.yaml \
  base/frontend/service-prod.yaml \
  > validation-output/kubeconform-prod.txt

conftest test base --policy policy \
  > validation-output/conftest-prod.txt
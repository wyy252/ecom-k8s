set -e
mkdir -p validation-output

kubeconform -summary -strict \
  base/common/staging-namespace.yaml \
  base/common/staging-resourcequota.yaml \
  base/database/configmap.yaml \
  base/database/secret.yaml \
  base/database/pv.yaml \
  base/database/pvc.yaml \
  base/database/deployment.yaml \
  base/database/service.yaml \
  base/product-service/deployment.yaml \
  base/product-service/service-staging.yaml \
  base/order-service/deployment.yaml \
  base/order-service/service-staging.yaml \
  base/frontend/deployment.yaml \
  base/frontend/service-staging.yaml \
  > validation-output/kubeconform-staging.txt

conftest test base --policy policy \
  > validation-output/conftest-staging.txt
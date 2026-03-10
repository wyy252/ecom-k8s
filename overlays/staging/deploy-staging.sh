kubectl apply -f ../../base/common/staging-namespace.yaml
kubectl apply -f ../../base/common/staging-resourcequota.yaml

kubectl apply -n staging -f ../../base/database/configmap.yaml
kubectl apply -n staging -f ../../base/database/secret.yaml
kubectl apply -n staging -f ../../base/database/pv.yaml
kubectl apply -n staging -f ../../base/database/pvc.yaml
kubectl apply -n staging -f ../../base/database/deployment.yaml
kubectl apply -n staging -f ../../base/database/service.yaml

kubectl apply -n staging -f ../../base/product-service/deployment.yaml
kubectl apply -n staging -f ../../base/product-service/service-staging.yaml

kubectl apply -n staging -f ../../base/order-service/deployment.yaml
kubectl apply -n staging -f ../../base/order-service/service-staging.yaml

kubectl apply -n staging -f ../../base/frontend/deployment.yaml
kubectl apply -n staging -f ../../base/frontend/service-staging.yaml
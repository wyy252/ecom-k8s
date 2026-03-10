kubectl apply -f ../../base/common/prod-namespace.yaml
kubectl apply -f ../../base/common/prod-resourcequota.yaml

kubectl apply -n prod -f ../../base/database/configmap.yaml
kubectl apply -n prod -f ../../base/database/secret.yaml
kubectl apply -n prod -f ../../base/database/pv.yaml
kubectl apply -n prod -f ../../base/database/pvc.yaml
kubectl apply -n prod -f ../../base/database/deployment.yaml
kubectl apply -n prod -f ../../base/database/service.yaml

kubectl apply -n prod -f ../../base/product-service/deployment.yaml
kubectl apply -n prod -f ../../base/product-service/service-prod.yaml

kubectl apply -n prod -f ../../base/order-service/deployment.yaml
kubectl apply -n prod -f ../../base/order-service/service-prod.yaml

kubectl apply -n prod -f ../../base/frontend/deployment.yaml
kubectl apply -n prod -f ../../base/frontend/service-prod.yaml
kubectl apply -f ../../base/common/dev-namespace.yaml
kubectl apply -f ../../base/common/dev-resourcequota.yaml

kubectl apply -n dev -f ../../base/database/configmap.yaml
kubectl apply -n dev -f ../../base/database/secret.yaml
kubectl apply -n dev -f ../../base/database/pv.yaml
kubectl apply -n dev -f ../../base/database/pvc.yaml
kubectl apply -n dev -f ../../base/database/deployment.yaml
kubectl apply -n dev -f ../../base/database/service.yaml

kubectl apply -n dev -f ../../base/product-service/deployment.yaml
kubectl apply -n dev -f ../../base/product-service/service.yaml

kubectl apply -n dev -f ../../base/order-service/deployment.yaml
kubectl apply -n dev -f ../../base/order-service/service.yaml

kubectl apply -n dev -f ../../base/frontend/deployment.yaml
kubectl apply -n dev -f ../../base/frontend/service.yaml
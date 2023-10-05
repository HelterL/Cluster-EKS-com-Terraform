# Cluster-EKS-com-Terraform

## Conexão com o cluster EKS

-- name é o nome do nosso cluster

```bash
aws eks --region us-east-1 update-kubeconfig --name AppV1
```
Exibindo nós criados

```bash
kubectl get nodes
```

Exibindo pods do namespace kube-system

```bash
kubectl get pods -n kube-system
```

Fazer deploy de uma aplicação nginx
```bash
kubectl apply -f k8s/deployment.yaml
```

Fazer o expose da aplicação para a internet através de um load balancer

```bash
kubectl apply -f k8s/public-lb.yaml
```

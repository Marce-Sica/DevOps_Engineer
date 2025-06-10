# Desafío 13 – ArgoCD en Minikube

Este desafío demuestra la instalación, configuración y funcionamiento de ArgoCD sobre Minikube para realizar despliegues automatizados desde Git.

## Componentes

- `manifiestos/demo-app.yaml`: manifiestos de la aplicación demo (nginx)
- `documentacion_desafio_13.docx`: pasos detallados + evidencia
- `evidencia/`: capturas del funcionamiento

## Comandos principales

```bash
minikube start
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl port-forward svc/argocd-server -n argocd 8080:443
```

Acceder a ArgoCD en `https://localhost:8080`

---

📄 **Descargar guía formal del desafío:**
[documentacion_desafio_13.docx](./documentacion_desafio_13.docx)
# Desafío 14 – Despliegue Helm Chart con ArgoCD

Este desafío demuestra cómo desplegar automáticamente un Helm Chart (Desafío 12) usando ArgoCD en Kubernetes.

## Pasos

1. Instalar ArgoCD (si no está instalado)
2. Aplicar el archivo argocd-application.yaml:
```bash
kubectl apply -f argocd-application.yaml
```
3. Acceder al dashboard de ArgoCD en https://localhost:8080 y verificar el estado.

## Funcionalidad

- Aplicación: NestJS App
- Base de datos: MongoDB
- Tooling: Helm + ArgoCD + Minikube

---

📄 **Descargar guía formal del desafío:**
[documentacion_desafio_14.docx](./documentacion_desafio_14.docx)
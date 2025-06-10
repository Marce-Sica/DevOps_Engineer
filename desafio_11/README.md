# Desafío 11 – Kubernetes Deployment

Este desafío convierte la aplicación NestJS + MongoDB definida en Docker Compose a manifiestos Kubernetes.

## Archivos

- `k8s/nestjs-app-deployment.yaml`: Deployment + Service para NestJS
- `k8s/mongodb-deployment.yaml`: Deployment + Service para MongoDB

## Aplicación

```bash
kubectl apply -f k8s/
```

---

📄 **Descargar guía formal del desafío:**
[documentacion_desafio_11.docx](./documentacion_desafio_11.docx)
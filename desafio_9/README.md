# Desafío 9 - Docker + GitHub Actions

## Objetivo

Construir una imagen Docker de una app Node.js y publicarla en Docker Hub automáticamente usando GitHub Actions.

## Estructura

- Dockerfile: para build local
- .github/workflows/build.yml: pipeline CI/CD

## Instrucciones

1. Agregar secretos al repositorio:
   - `DOCKER_HUB_USERNAME`
   - `DOCKER_HUB_TOKEN`

2. Hacer push al branch `main`.

3. La imagen se publica en Docker Hub.

---

📄 **Descargar guía formal del desafío:**
[documentacion_desafio_9.docx](./documentacion_desafio_9.docx)
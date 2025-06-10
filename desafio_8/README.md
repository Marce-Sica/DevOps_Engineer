# Desafío 8 – Terraform + GitHub Actions

Este repositorio contiene una prueba de concepto (PoC) que integra Terraform Cloud con GitHub Actions para aprovisionar infraestructura en AWS de manera segura y automatizada.

## Componentes principales

- Código Terraform en `infra/` para crear recursos en AWS.
- Workflow de GitHub Actions `.github/workflows/terraform.yml`.
- Uso de Terraform Cloud como backend remoto.
- Uso de secretos GitHub para autenticar contra Terraform Cloud y AWS.

## Uso

1. Crear una cuenta en [Terraform Cloud](https://app.terraform.io).
2. Configurar un workspace conectado al repositorio.
3. Agregar los siguientes secretos en GitHub:
   - `TF_API_TOKEN`
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
4. Hacer commit a `main` o abrir un pull request para ejecutar el workflow automáticamente.

## Mejoras posibles

- Validaciones previas con `terraform validate`.
- Agregado de notificaciones vía Slack o Discord.
- Soporte para múltiples entornos (dev, staging, prod).

---

📄 **Descargar guía formal del desafío:**
[documentacion_desafio_8.docx](./documentacion_desafio_8.docx)
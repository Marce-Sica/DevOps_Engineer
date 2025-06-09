# Desafío 4 – AWS: Uso de Roles

## ✅ Objetivo

Configurar (de forma simulada) un entorno en AWS donde un usuario IAM pueda asumir un rol para tener permisos de escritura en un bucket S3, utilizando AWS CLI.

---

## 🔧 Pasos realizados

1. Se crea un bucket S3 llamado `devops-bootcamp-s3-marce-2025`.
2. Se define un **rol IAM** con:
   - Política de confianza (trust policy) que permite ser asumido por el usuario `s3-support`.
   - Política de permisos (permissions policy) con acción `s3:PutObject`.
3. Se crea el usuario IAM `s3-support` con acceso programático.
4. Se configura AWS CLI con ese usuario.
5. Se simula la ejecución del comando `assume-role` con retorno de credenciales temporales.
6. Se simula el uso de esas credenciales para subir un archivo al bucket S3 con `aws s3 cp`.

---

## 🧪 Evidencia

- `evidencia/assume_role_output.txt` → muestra la respuesta del `sts assume-role`.
- `evidencia/s3_upload_output.txt` → muestra la copia exitosa del archivo al bucket S3.

---

## 🗂️ Estructura

```
desafio_4/
├── documentacion_desafio_4.docx
├── README.md
├── evidencia/
│   ├── assume_role_output.txt
│   └── s3_upload_output.txt
└── diagrama_desafio_4.png
```

---

📄 **Descargar guía formal del desafío:**
[documentacion_desafio_4.docx](./documentacion_desafio_4.docx)
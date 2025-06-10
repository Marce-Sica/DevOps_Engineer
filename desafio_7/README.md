# Desafío 7 - CI/CD Pipeline con Jenkins y Ansible

Este proyecto implementa un pipeline CI/CD usando Jenkins para ejecutar playbooks de Ansible
desde un repositorio Git según el entorno (dev, staging, main).

## Estructura
- `ansible/`: contiene el playbook `site.yml`, roles y el inventario por entorno.
- `Jenkinsfile`: define un pipeline multibranch que detecta la rama actual y ejecuta el playbook en su entorno.

## Inventario
- `inventory/dev/hosts`: entorno de desarrollo
- `inventory/staging/hosts`: entorno de pruebas
- `inventory/main/hosts`: entorno productivo

## Ejecución automática
- Se recomienda usar webhooks de GitHub para disparar los jobs automáticamente al hacer push a cada rama.

## Requisitos
- Jenkins con plugins para Git.
- Ansible instalado en el nodo Jenkins.
- Acceso SSH a las máquinas destino desde Jenkins.

## Ejemplo
```bash
ansible-playbook -i ansible/inventory/dev/hosts ansible/site.yml
```

---

📄 **Descargar guía formal del desafío:**
[documentacion_desafio_7.docx](./documentacion_desafio_7.docx)
# Desafío 6 - Modularización de proyecto Ansible

## 🎯 Objetivo

El objetivo de este proyecto es **modularizar** una configuración Ansible previamente implementada, con el fin de:
- Reducir la duplicación de código.
- Reutilizar variables.
- Organizar la lógica de despliegue por roles.
- Facilitar el mantenimiento y la escalabilidad del proyecto.

---

## 📁 Estructura del Proyecto

├── ansible.cfg
├── hosts
├── site.yml
├── group_vars/
│ └── all.yml
├── roles/
│ ├── apache/
│ │ ├── tasks/
│ │ │ └── main.yml
│ │ └── templates/
│ │ └── index.html.j2
│ ├── packages/
│ │ └── tasks/
│ │ └── main.yml
│ └── users/
│ └── tasks/
│ └── main.yml
└── README.md

---

## 🧩 Descripción de Roles

- **packages**: Instala los paquetes necesarios para el sistema operativo.
- **users**: Crea y configura los usuarios requeridos.
- **apache**: Instala y configura el servidor Apache y genera un archivo `index.html` dinámico mediante Jinja2.

---

## Cómo ejecutar

```bash
ansible-playbook -i inventory/hosts site.yml
```

## Evidencia de ejecución

Ver archivo `evidencia_ejecucion.txt`

---

📄 **Descargar guía formal del desafío:**
[documentacion_desafio_6.docx](./documentacion_desafio_6.docx)
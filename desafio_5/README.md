# Desafío 5 – AWS: EC2 + VPC + RDS

## ✅ Objetivo
Simular la creación de una arquitectura completa en AWS compuesta por:
- Usuario IAM con permisos administrativos
- VPC personalizada con subredes públicas
- Security Group abierto a conexiones externas
- Base de datos MariaDB configurada sobre RDS
- Conectividad a través de Internet

---

## 🔧 Componentes simulados

- Usuario IAM: `admin-devops`
- VPC: `tutorial-vpc` (CIDR: 10.0.0.0/16)
- Subredes: `Tutorial public 1`, `Tutorial public 2`
- DB Subnet Group: `tutorial-db-subnet-group`
- Base de datos: MariaDB, instancia pública accesible por endpoint
- Región: `us-west-2`

---

## 📁 Estructura

```
desafio_5/
├── README.md
├── documentacion_desafio_5.docx
├── diagrama_desafio_5.png
└── evidencia/
    ├── rds_instance_output.txt
    └── mariadb_connection.txt
```

---

## 🗂️ Documentación

Se describe paso a paso la creación de todos los recursos implicados en una infraestructura funcional.

---


📄 **Descargar guía formal del desafío:**
[documentacion_desafio_5.docx](./documentacion_desafio_5.docx)
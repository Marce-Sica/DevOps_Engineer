# Desafío 1 - Usuarios Linux + Jenkins

Este desafío automatiza la gestión de usuarios en Linux mediante Jenkins Pipelines.

---

## 📌 Objetivo

Crear dos jobs en Jenkins para:

- ✅ Crear un usuario Linux con login, nombre completo y departamento
- ❌ Eliminar un usuario, su grupo y su carpeta home

---

## 📂 Estructura del proyecto


---

## 🔧 Jenkins Jobs

### 1. ✅ Crear Usuario

- **Pipeline**: `Jenkinsfile_crear_usuario`
- **Parámetros requeridos**:
  - `LOGIN`: identificador único (nombre_apellido)
  - `FULLNAME`: nombre y apellido del usuario
  - `DEPARTMENT`: contabilidad, finanzas o tecnologia
- **Resultado**:
  - Usuario creado con grupo
  - Password temporal generada y visible en log
  - Password obligatoriamente renovada en primer login

---

### 2. ❌ Eliminar Usuario

- **Pipeline**: `Jenkinsfile_eliminar_usuario`
- **Parámetro requerido**:
  - `LOGIN`: nombre del usuario a eliminar
- **Resultado**:
  - Se elimina el usuario, su carpeta `/home/usuario`, y su grupo (si está vacío)

---

## 🧪 Evidencia de funcionamiento

- Captura del log del job con la password temporal generada
- Captura del log del job de eliminación confirmando borrado

---

## 📊 Diagrama de alto nivel

![](diagrama_desafio_1.png)

---

## 📦 Requisitos para entrega

- Subido a GitHub dentro del repo `DevOps_Engineer`
- Archivos correctamente organizados
- README explicativo + evidencias + diagrama



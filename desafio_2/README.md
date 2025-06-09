# Desafío 2 – Jenkins Webhook + Node.js API

Este desafío consiste en configurar un pipeline de integración continua (CI) usando Jenkins y una aplicación Node.js con Jest como herramienta de testing.

---

## 🚀 Objetivo

- Ejecutar un pipeline automático al hacer un `push` o `pull request` en GitHub.
- Testear una API desarrollada en Node.js.
- Usar Jest como framework de testing.
- Simular integración vía webhook con Jenkins.

---

## 🛠️ Estructura del proyecto


---

## 📄 Jenkinsfile

El pipeline consta de las siguientes etapas:

1. **Checkout** del código desde GitHub
2. **npm install** para instalar dependencias
3. **npm test** ejecuta los tests con Jest
4. **Build final** con mensaje de éxito

---

## 🧪 Evidencia

Se incluyen pruebas simuladas:

- `evidencia/evidencia_build.txt`: salida simulada de un build exitoso
- `evidencia/evidencia_webhook.txt`: simulación del webhook de GitHub activando Jenkins

---

## 🔗 Recursos usados

- [Jenkins GitHub Plugin](https://plugins.jenkins.io/github/)
- [Node.js + Jest](https://jestjs.io/)
# 🧩 Instalador Office Personalizado

Instalador automatizado de Microsoft Office con configuraciones personalizadas (Full y Lite), desarrollado por **ZT Developer**.  
Permite elegir entre una instalación completa o ligera y ejecuta automáticamente el instalador oficial (`setup.exe`) con los archivos XML correspondientes.

---

## ⚙️ Características

- Menú interactivo en consola (CMD)
- Instalación automática con configuración predefinida (`full.xml` o `lite.xml`)
- Créditos del desarrollador al finalizar la instalación
- Compatible con Windows 10 / 11
- No requiere herramientas externas

---

## 📁 Estructura del proyecto

OFFICE/
├── full.xml
├── lite.xml
├── setup.exe
└── instalar_office.cmd

yaml
Copiar código

---

## 🚀 Uso

1. Coloca todos los archivos en la misma carpeta (`OFFICE`).
2. Ejecuta **CMD como administrador**.
3. Navega a la carpeta donde guardaste los archivos:
   ```cmd
   cd /d "D:\1TB\Descargas\OFFICE"
Ejecuta el instalador:

cmd
Copiar código
instalar_office.cmd
Elige entre:

1 → Instalación Completa (usa full.xml)

2 → Instalación Ligera (usa lite.xml)

🧑‍💻 Créditos
ZT Developer
Victor Vasquez
📞 74886265
📧 vvasquezok2016@devninja.xyz

🪪 Licencia
Este proyecto se distribuye con fines educativos y de automatización de instalación.
El contenido de Microsoft Office pertenece a Microsoft Corporation.


¿Deseas que también te genere un `LICENSE` (por ejemplo MIT o GPLv3) adaptado a tu nombre de desarrollador para agregarlo al repo?

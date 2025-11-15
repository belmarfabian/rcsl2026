# RCSL 2026 Conference Website

Sitio web oficial de la conferencia internacional **"The Democratic Rule of Law in World Society"** organizada por el Research Committee on Sociology of Law (RC12) en Santiago, Chile.

## 🎯 Descripción

Este repositorio contiene el sitio web estático para RCSL 2026, una conferencia internacional de sociología del derecho que se llevará a cabo en la Universidad Diego Portales, Santiago, Chile, del 31 de agosto al 3 de septiembre de 2026.

## 🏛️ Información del Evento

- **Tema**: The Democratic Rule of Law in World Society
- **Fechas**: 31 de agosto - 3 de septiembre, 2026
- **Sede**: Universidad Diego Portales (UDP)
- **Ubicación**: Santiago, Chile
- **Organización**: Research Committee on Sociology of Law (RC12)
- **Instituciones asociadas**:
  - ISA (International Sociological Association)
  - Oñati International Institute for the Sociology of Law
  - Universidad Diego Portales

## 📄 Contenido del Sitio

El sitio incluye información completa sobre:

- **About**: Información general sobre la conferencia y sus organizadores
- **Theme**: Tema central de la conferencia y áreas temáticas
- **Call for Papers**: Convocatoria para presentación de trabajos y sesiones
- **Working Groups**: 18 grupos de trabajo especializados en diferentes áreas de la sociología del derecho
- **Timeline**: Calendario de fechas importantes (abstracts, early bird registration, etc.)
- **Registration**: Información sobre inscripción y tarifas
- **Programme**: Programa de la conferencia
- **Venue**: Información sobre la sede y alojamiento
- **FAQ**: Preguntas frecuentes (faq.html)

## 📅 Fechas Importantes

- **Abstract Submission Opens**: December 1, 2025
- **Abstract Submission Closes**: April 1, 2026
- **Early-Bird Registration**: Until April 30, 2026
- **Late Registration**: May 1 - June 30, 2026
- **Conference**: August 31 - September 3, 2026

## 🛠️ Tecnología

- **Frontend**: HTML5, CSS3, JavaScript vanilla
- **Tipo**: Single-page application (SPA) estática
- **Características**:
  - Diseño responsive
  - Soporte multiidioma (inglés/español)
  - Navegación suave con scroll
  - Timeline interactiva
  - Tooltips informativos para Working Groups
- **Hosting**: GitHub Pages

## 📁 Estructura del Proyecto

```
.
├── index.html                          # Página principal (SPA)
├── faq.html                            # Preguntas frecuentes
├── CFP - 2026 RCSL Santiago.pdf       # Call for Papers oficial
├── rcsl2026-sitio-udp.zip             # Backup del sitio
├── Images/                             # Recursos visuales
│   ├── hero-banner.jpg                 # Banner principal
│   ├── biblioteca-udp.jpg              # Fotos del campus
│   ├── facultad-derecho.jpg
│   ├── udp-logo.png                    # Logos institucionales
│   ├── isa.png
│   ├── onati.png
│   └── rc12.png
└── README.md                           # Este archivo
```

## 🚀 Desarrollo Local

Para trabajar con el sitio localmente:

```bash
# Clonar el repositorio
git clone https://github.com/belmarfabian/rcsl2026.git

# Navegar al directorio
cd rcsl2026

# Abrir index.html en navegador
# O usar un servidor local:
python -m http.server 8000
# Luego abrir http://localhost:8000
```

## 🌍 Idiomas

El sitio soporta dos idiomas:
- 🇬🇧 English (default)
- 🇪🇸 Español

El cambio de idioma se realiza mediante botones en la navegación principal.

## 📝 Actualización de Contenido

Para actualizar información de la conferencia:

1. **Contenido textual**: Editar `index.html` (buscar elementos con clases `lang-en` y `lang-es`)
2. **FAQ**: Editar `faq.html`
3. **Imágenes**: Actualizar archivos en la raíz del proyecto
4. **Call for Papers**: Reemplazar el PDF
5. **Commit y push** de cambios

## 🎨 Características del Diseño

- **Timeline interactiva**: Visualización cronológica de fechas importantes
- **Working Groups con tooltips**: Información detallada al hacer hover
- **Galería de imágenes**: Carousel con fotos del campus UDP
- **Navegación sticky**: Menú fijo al hacer scroll
- **Responsive**: Adaptado para móviles y tablets

## 👥 Contribuciones

Este sitio es mantenido por el equipo organizador de RCSL 2026. Para sugerencias o correcciones relacionadas con el contenido de la conferencia, contactar a los organizadores.

## 📫 Contacto

Para información sobre la conferencia, consultar:
- **Sitio web**: https://belmarfabian.github.io/rcsl2026/
- **Call for Papers**: [CFP - 2026 RCSL Santiago.pdf](CFP%20-%202026%20RCSL%20Santiago.pdf)

---

© 2025-2026 Research Committee on Sociology of Law (RC12) - Universidad Diego Portales

#import "blocks.typ": *

#show: cv-template

#grid(
  columns: (32%, 68%),

  // ================= LEFT COLUMN =================
  [
    #set text(fill: left-text-color)
    #pad(x: 0.6cm, top: 2cm, bottom: 1.5cm)[
      #align(center)[
        #box(width: 4.4cm, height: 4.4cm, radius: 50%, clip: true, stroke: 1.5pt + white)[
          #image("userPhoto.jpg", width: 100%, height: 100%, fit: "cover")
        ]
        #v(1em)
        #text(size: 18pt, weight: "bold")[Nicolás\ Schkurko] \
        #v(0.3em)
        #text(size: 11pt)[Desarrollador de Software]
      ]
      #v(2em)

      #align(center)[#text(size: 11pt, weight: "bold")[Contacto]]
      #line(length: 100%, stroke: 1pt + white)

      #grid(
        columns: (auto, 1fr),
        gutter: 8pt,
        row-gutter: 0.8em,
        align: (center + horizon, left + horizon),
        icon("icons/mail.svg"), link("mailto:schkurkonicolas@gmail.com")[#text(fill: left-text-color)[schkurkonicolas\@gmail.com]],
        icon("icons/users.svg"), link("https://www.linkedin.com/in/nicolas-schkurko")[#text(fill: left-text-color)[LinkedIn]],
        icon("icons/github.svg"), link("https://github.com/NicolasSchkurko")[#text(fill: left-text-color)[GitHub]],
        icon("icons/map-pin.svg"), text(fill: left-text-color)[Buenos Aires, Argentina]
      )

      #v(0.5em)
      #align(center)[#text(size: 11pt, weight: "bold")[Aptitudes]]
      #line(length: 100%, stroke: 1pt + white)

      *Idiomas* \
      Español (Nativo) \
      Inglés (Intermedio) \
      Portugués (Básico)
      #v(0.5em)

      *Desarrollo de Software* \
      Java, Spring Boot, Golang, NextJS, C, C++, JavaScript.
      #v(0.5em)

      *IA y Automatización* \
      N8n, OpenAI API, WhatsApp API, Kommo, Wati.
      #v(0.5em)

      *Sistemas CRM* \
      Zoho CRM, Dynamics CRM.
      #v(0.5em)

      *Datos, Cloud y Arquitectura* \
      PostgreSQL, SQL Server, MongoDB, GCP, BigQuery.
      #v(0.5em)

      *Business Intelligence* \
      Looker Studio, Power BI.
    ]
  ],

  // ================= RIGHT COLUMN =================
  [
    #pad(x: 1.0cm, top: 2.5cm, bottom: 1.5cm)[
      = Perfil Profesional
      #v(0.5em)
      Desarrollador de Software y estudiante de Ingeniería en Sistemas de Información, enfocado en entender los problemas y entregar soluciones tecnológicas efectivas. Con experiencia en el diseño de sistemas escalables, la automatización de procesos y el desarrollo de integraciones para optimizar operaciones y flujos de comunicación, adaptándome a las necesidades de cada proyecto.

      = Experiencia Laboral

      #entry("Nucleo Marketing", "Oct. 2022 - Actualidad (Remoto)")
      #role("Desarrollador de Software")
      - Implementé 3 plataformas Zoho CRM de punta a punta para distintos clientes.
      - Desarrollé y desplegué servicios de unificación de canales de comunicación (Kommo y Wati) para múltiples clientes.
      - Desarrollé 2 bots conversacionales en n8n integrando la API de OpenAI, con hasta 70 consultas diarias.
      - Automaticé flujos complejos consumiendo e integrando APIs REST de terceros y scripts propios.
      - Diseñé arquitecturas de almacenamiento y extracción de datos con bases SQL relacionales y el ecosistema de Google Cloud, incluyendo BigQuery.
      - Construí 7 tableros interactivos (5 en Power BI, 2 en Looker Studio) para el seguimiento de KPIs.

      #entry("Coordline (Marketing de Precisión)", "Ene. 2023 - Actualidad (Remoto)")
      #role("Desarrollador de Software")
      - Desarrollé un bot con la API de WhatsApp para optimizar la atención directa en las operaciones digitales.
      #role("Analista y Operador de CRM")
      - Configuré segmentos y campañas en MS Dynamics CRM, gestionando el análisis y registro de contactos.


      = Proyectos Destacados

      #role(link("https://github.com/NicolasSchkurko/TPddsw-UTNFRBA-tiendasol-2025")[Plataforma de E-Commerce (Node.js / React)])
      Co-desarrollé una aplicación Full Stack Serverless, participando en el armado de pipelines de CI/CD y en el modelado de datos no relacionales.

      #role(link("https://github.com/NicolasSchkurko/TPA-G3-DDS-2026")[Plataforma de Donaciones — Microservicios (Java / Spring Boot)])
      Co-desarrollé una plataforma de cuatro servicios (donaciones, incentivos, notificaciones y logística) con una base de datos por servicio, integración por RabbitMQ y CI por módulo, más un backlog técnico documentado.

      #role(link("https://github.com/NicolasSchkurko/DDS-tpa-2025-12")[Mapeo Colaborativo para ONG (Java)])
      Co-construí una plataforma integral aplicando arquitectura MVC. Implementé persistencia en MySQL y búsquedas Full-Text.

      #role(link("https://github.com/NicolasSchkurko/limit-switch")[Limit-Switch — Add-on de Google Forms (Google Apps Script)])
      Desarrollé un add-on gratuito que limita las respuestas de un formulario con manejo seguro de concurrencia, configuración por formulario y documentación bilingüe; preparado para su publicación en el Marketplace.

      #role(link("https://github.com/pdepjm/2024-o-tpjuego-ahmeestancodeando")[Desarrollo de Videojuego (Wollok)])
      Programé colaborativamente un videojuego aplicando conceptos avanzados de POO. Mención especial "Adaptación más creativa" en el concurso interuniversitario Wollok Game 2024.

      #role(link("https://github.com/NicolasSchkurko/Controlador_Termotanque_Solar_PF_ISJ/tree/main")[Sistema IoT (C / C++)])
      Co-diseñé hardware y firmware para el control de un termotanque solar, resolviendo la integración de telemetría web entre microcontroladores mediante protocolo serie.

      = Educación

      #entry("UTN FRBA", "Mar. 2023 - Actualidad")
      #role("Ingeniería en Sistemas de Información")

      #entry("Instituto San José (A-355)", "Feb. 2017 - Dic. 2022")
      #role("Técnico Electrónico")
    ]
  ]
)

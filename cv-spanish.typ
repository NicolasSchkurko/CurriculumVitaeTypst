#import "blocks.typ": *

#show: cv-template

#grid(
  columns: (32%, 68%),

  // ================= LEFT COLUMN =================
  [
    #set text(fill: left-text-color)
    #pad(x: 0.6cm, top: 1.2cm, bottom: 1.0cm)[
      #align(center)[
        #box(width: 4.2cm, height: 4.2cm, radius: 50%, clip: true, stroke: 1.5pt + white)[
          #image("userPhoto.jpg", width: 100%, height: 100%, fit: "cover")
        ]
        #v(0.8em)
        #text(size: 18pt, weight: "bold")[Nicolás\ Schkurko] \
        #v(0.3em)
        #text(size: 10.5pt)[Desarrollador de Software]
      ]
      #v(1.2em)

      #align(center)[#text(size: 11pt, weight: "bold")[Contacto]]
      #line(length: 100%, stroke: 1pt + white)

      #grid(
        columns: (auto, 1fr),
        gutter: 8pt,
        row-gutter: 0.7em,
        align: (center + horizon, left + horizon),
        icon("icons/mail.svg"), link("mailto:schkurkonicolas@gmail.com")[#text(fill: left-text-color)[schkurkonicolas\@gmail.com]],
        icon("icons/users.svg"), link("https://www.linkedin.com/in/nicolas-schkurko")[#text(fill: left-text-color)[LinkedIn]],
        icon("icons/github.svg"), link("https://github.com/NicolasSchkurko")[#text(fill: left-text-color)[GitHub]],
        icon("icons/globe.svg"), link("https://nschkurko.com")[#text(fill: left-text-color)[nschkurko.com]],
        icon("icons/map-pin.svg"), text(fill: left-text-color)[Buenos Aires, Argentina \ (Remoto)]
      )

      #v(0.6em)
      #align(center)[#text(size: 11pt, weight: "bold")[Aptitudes Clave]]
      #line(length: 100%, stroke: 1pt + white)

      *IA & Agentes Autónomos* \
      #text(size: 8.5pt)[LLMs (OpenAI, Claude), Arquitectura de Agentes, Harness de Evaluación, Manejo de Contexto, RAG, Bases Vectoriales (pgvector), Embeddings.]
      #v(0.3em)

      *Automatización & Integración* \
      #text(size: 8.5pt)[n8n, Make, APIs REST, Webhooks, Slack integrations, JSON, Postman.]
      #v(0.3em)

      *Desarrollo Backend & Datos* \
      #text(size: 8.5pt)[Go (Golang), Java (Spring Boot), Python, JavaScript, SQL (PostgreSQL, SQL Server), GCP (BigQuery).]
      #v(0.3em)

      *CI/CD & Arquitectura* \
      #text(size: 8.5pt)[GitHub Actions, Docker, Microservicios, Arquitectura por Eventos (RabbitMQ).]
      #v(0.3em)

      *Idiomas* \
      Español (Nativo) \
      Inglés (Profesional / B2)
    ]
  ],

  // ================= RIGHT COLUMN =================
  [
    #pad(x: 0.8cm, top: 1.2cm, bottom: 1.0cm)[
      = Perfil Profesional
      #v(0.3em)
      Desarrollador de Software y estudiante de Ingeniería en Sistemas de Información (UTN FRBA), enfocado en entender los problemas y entregar soluciones tecnológicas efectivas. Con experiencia en el diseño de sistemas escalables, la automatización de procesos y el desarrollo de integraciones para optimizar operaciones y flujos de comunicación, adaptándome a las necesidades de cada proyecto.

      = Experiencia Laboral

      #entry("Nucleo Marketing", "Oct. 2022 - Actualidad (Remoto)")
      #role("AI & Software Developer")
      - *Agentes y Bots en Producción:* Diseñé y desplegué agentes basados en LLMs (OpenAI API / n8n) para automatizar procesos manuales, atención e intake operativo.
      - *Pipelines RAG y Datos:* Construí flujos ETL automatizados e ingesta de documentos multiformato hacia bases vectoriales (pgvector) para consultas semánticas libres de alucinaciones.
      - *Integración con APIs y CRMs:* Conecté agentes y workflows con CRMs corporativos (Zoho, Kommo) y servicios de terceros mediante webhooks y APIs REST.
      - *Bases de Datos y Seguridad:* Diseñé arquitecturas de persistencia relacional y en Google Cloud (BigQuery), aplicando validaciones estrictas y control de accesos.
      - *Monitoreo y KPIs:* Construí 7 tableros en Power BI y Looker Studio para seguimiento de métricas operativas.

      #entry("Coordline (Marketing de Precisión)", "Ene. 2023 - Actualidad (Remoto)")
      #role("Desarrollador de Software & Analista de Procesos")
      - Desarrollé bots de mensajería automatizada con APIs para optimizar la atención directa en las operaciones digitales.
      - Diseñé flujos de automatización de contactos, segmentación y reglas de ciclo de vida en Microsoft Dynamics CRM.

      = Proyectos Destacados

      #link("https://github.com/NicolasSchkurko/Spec-Growth")[#text(weight: "bold", fill: right-text-color)[Spec-Growth — Harness y Gobernanza de Agentes de IA (OpenCode / SDD)]] \
      Desarrollé un método de gestión de cambios basado en especificaciones (Spec-Driven Development) para mitigar el context drift en agentes de código mediante gates determinísticos, aislamiento de contexto y evidencia de tests verdes.

      #v(0.2em)
      #text(weight: "bold")[Agente Multiagente Autónomo & Pipeline RAG (n8n / pgvector / OpenAI)] \
      Arquitecté un sistema de agentes con router de intención, subagentes especializados, tools determinísticas de base de datos y sincronización continua desde Google Drive a pgvector.

      #v(0.2em)
      #link("https://github.com/NicolasSchkurko/TPA-G3-DDS-2026")[#text(weight: "bold", fill: right-text-color)[Plataforma Distribuida de Microservicios (Java / Spring Boot / RabbitMQ / Docker)]] \
      Co-desarrollé una arquitectura de 4 microservicios con mensajería asíncrona, bases de datos independientes, Docker y pipelines de CI/CD en GitHub Actions con 34 tests de integración automatizados en Postman.

      #v(0.2em)
      #link("https://github.com/NicolasSchkurko/utn-tp-so-Go-2c-2024")[#text(weight: "bold", fill: right-text-color)[Simulador de Sistema Operativo Concurrente (Go / Golang)]] \
      Implementé módulos concurrentes en Go simulando planificación de CPU, memoria virtual paginada y comunicación cliente-servidor por sockets.

      = Educación

      #entry("UTN FRBA", "Mar. 2023 - Actualidad")
      #role("Ingeniería en Sistemas de Información")

      #entry("Instituto San José (A-355)", "Feb. 2017 - Dic. 2022")
      #role("Técnico Electrónico")
    ]
  ]
)

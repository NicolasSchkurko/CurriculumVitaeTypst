#let data-es = (
  title: "CV - Nicolás Schkurko (ES)",
  lang: "es",

  meta: (
    name: "Nicolás Schkurko",
    headline: "Desarrollador de Software — Backend, Integraciones e IA Aplicada",
    short-headline: "Backend · Integraciones · IA aplicada",
    location: "Buenos Aires, Argentina",
    availability: "Remoto",
    email: "schkurkonicolas@gmail.com",
    site: "nschkurko.com",
    site-url: "https://nschkurko.com",
    github: "github.com/NicolasSchkurko",
    github-url: "https://github.com/NicolasSchkurko",
    linkedin: "linkedin.com/in/nicolas-schkurko",
    linkedin-url: "https://www.linkedin.com/in/nicolas-schkurko",
  ),
  photo: "userPhoto.jpg",

  labels: (
    profile: "Perfil Profesional",
    experience: "Experiencia Laboral",
    projects: "Proyectos Seleccionados",
    skills: "Stack Técnico",
    education: "Educación",
    languages: "Idiomas",
    contact: "Contacto",
  ),

  profile: "Desarrollador de software con 4 años de experiencia construyendo servicios backend, integraciones y automatizaciones para agencias de marketing. Estudiante de 4.º año de Ingeniería en Sistemas de Información (UTN FRBA), con base de Técnico Electrónico. Trabajo reciente: agentes con LLMs, pipelines RAG y tooling open source para desarrollo asistido por IA. Documento lo que construyo para que otro pueda mantenerlo.",

  experience: (
    (
      place: "Nucleo Marketing",
      date: "Oct. 2022 – Actualidad · Remoto",
      role: "AI & Software Developer (dedicación principal)",
      bullets: (
        "Implementé 3 plataformas Zoho CRM de punta a punta y servicios de unificación de canales (Kommo, Wati) en múltiples cuentas.",
        "Desarrollé 2 bots conversacionales en n8n sobre la API de OpenAI, con hasta 70 consultas diarias.",
        "Construí pipelines RAG sobre pgvector (Supabase) para ingesta de documentos multiformato y búsqueda semántica, con respuestas ancladas al corpus cargado.",
        "Diseñé esquemas relacionales (PostgreSQL, MySQL, SQL Server) y consultas en BigQuery; construí 7 tableros (5 Power BI, 2 Looker Studio).",
        "Integré APIs REST de terceros y webhooks bidireccionales; escribí middleware y automatizaciones en Node.js y JavaScript.",
      ),
    ),
    (
      place: "Coordline (Marketing de Precisión)",
      date: "Ene. 2023 – Actualidad · Remoto",
      role: "Desarrollador de Software & Analista de Procesos (contractor)",
      bullets: (
        "Desarrollé un bot sobre WhatsApp Business API para soporte directo, calificación de prospectos y registro automático en Microsoft Dynamics CRM.",
        "Configuré automatización de contactos, segmentación de audiencias y reglas de ciclo de vida en Dynamics CRM.",
      ),
    ),
  ),

  projects: (
    (
      title: "Spec-Growth (2026, MIT): gestión de cambios anclada a specs para agentes de IA",
      url: "https://github.com/NicolasSchkurko/Spec-Growth",
      bullets: (
        "Cada cambio de comportamiento pasa por una spec, una compuerta determinística y evidencia ganada; el agente escribe un brief técnico que el desarrollador debe explicar antes de cerrar el cambio.",
        "Suite de conformidad congelada: 17% menos tokens por batch y hasta 60% menos en la tarea más pesada.",
      ),
    ),
    (
      title: "Foco (2026): app Android de límites de tiempo, 100% local",
      url: "https://github.com/NicolasSchkurko/Foco",
      bullets: (
        "Kotlin y Jetpack Compose, sin cuentas ni servidores: uso por app, límites de tiempo y un overlay de fricción opcional.",
      ),
    ),
    (
      title: "LGR100-SteamVR (2026): driver de SteamVR para un visor abandonado",
      url: "https://github.com/NicolasSchkurko/LGR100-SteamVR",
      bullets: (
        "Reconstruí el protocolo HID a partir de un volcado de firmware y lo verifiqué contra hardware; tracking 3DOF y render estereoscópico en Windows.",
      ),
    ),
    (
      title: "Plataforma de Microservicios Distribuida (2026): TP anual, UTN FRBA",
      url: "https://github.com/NicolasSchkurko/TPA-G3-DDS-2026",
      bullets: (
        "Co-desarrollé 4 microservicios Spring Boot con una base MySQL por servicio, mensajería con RabbitMQ, Docker Compose y CI en GitHub Actions.",
        "Fui responsable del dominio de incentivos (perfiles, ranking, ingesta en lote) y de los documentos de deuda técnica del repositorio.",
      ),
    ),
  ),

  skills: (
    (label: "Lenguajes", items: "Java, Go, JavaScript/TypeScript, C/C++, SQL, Kotlin"),
    (label: "Backend y Datos", items: "Spring Boot, Node.js, APIs REST, PostgreSQL, MySQL, SQL Server, BigQuery, pgvector"),
    (label: "Cloud y DevOps", items: "Google Cloud, Cloudflare, Docker, GitHub Actions, RabbitMQ, OAuth 2.0, Git"),
    (label: "IA aplicada", items: "OpenAI API, Anthropic API, n8n, RAG, diseño de agentes, Vertex AI Vision (POC de detección de cascos)"),
    (label: "Sistemas y Embebidos", items: "ATmega328P, ESP8266, PlatformIO, KiCad, UART, SPI, I2C, HID"),
  ),

  education: (
    (
      place: "UTN FRBA",
      date: "Mar. 2023 – Dic. 2029 (estimado)",
      role: "Ingeniería en Sistemas de Información — 4.º año",
    ),
    (
      place: "Instituto San José (A-355)",
      date: "2017 – 2022",
      role: "Técnico Electrónico",
    ),
  ),

  languages: ("Español (nativo)", "Inglés (B2)", "Portugués (básico)"),
)

#let data-en = (
  title: "CV - Nicolás Schkurko (EN)",
  lang: "en",

  meta: (
    name: "Nicolás Schkurko",
    headline: "Software Developer — Backend, Integrations & Applied AI",
    short-headline: "Backend · Integrations · Applied AI",
    location: "Buenos Aires, Argentina",
    availability: "Remote",
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
    profile: "Professional Profile",
    experience: "Work Experience",
    projects: "Selected Projects",
    skills: "Technical Skills",
    education: "Education",
    languages: "Languages",
    contact: "Contact",
  ),

  profile: "Software developer since 2022, building backend services, integrations and automation for marketing agencies. Fourth-year Information Systems Engineering student at UTN FRBA, with a background as an Electronics Technician. Recent work focuses on LLM agents, RAG pipelines, and open-source tooling for AI-assisted development. I document what I build so someone else can maintain it.",

  experience: (
    (
      place: "Nucleo Marketing",
      date: "Oct. 2022 – Present · Remote",
      role: "AI & Software Developer",
      bullets: (
        "Deployed 3 Zoho CRM platforms end to end and unified channels (Kommo, Wati) across accounts, including discovery and technical proposals.",
        "Built 2 n8n bots over OpenAI, one with an intent router, 3 specialist agents and 6 catalog/stock tools; peaks of 70 queries/day.",
        "Built RAG pipelines on Supabase/pgvector: Google Drive ingestion of PDF, Word, Excel and Docs with OCR, chunking and reindexing.",
        "Designed relational schemas (PostgreSQL, MySQL, SQL Server) and analytical queries on BigQuery; built 7 dashboards (5 Power BI, 2 Looker Studio).",
        "Integrated REST APIs and webhooks; synced e-commerce catalog, variants and stock to Supabase.",
      ),
    ),
    (
      place: "Coordline (Precision Marketing)",
      date: "Jan. 2023 – Present · Remote",
      role: "Automation Specialist (contractor)",
      bullets: (
        "Built a WhatsApp Business API bot for direct support, lead qualification and automatic logging into Microsoft Dynamics CRM.",
        "Configured contact automation, audience segmentation and lifecycle rules in Dynamics CRM.",
      ),
    ),
  ),

  projects: (
    (
      title: "Spec-Growth (2026, MIT): spec-anchored change management for AI coding agents",
      url: "https://github.com/NicolasSchkurko/Spec-Growth",
      bullets: (
        "Method for developing with agents without losing control: every behavior change travels through a spec, a deterministic gate and earned evidence, and the agent writes a technical brief the developer must explain before a change closes.",
        "Measured with a frozen conformance suite: 17% fewer tokens per batch, up to 60% fewer on the heaviest task.",
      ),
    ),
    (
      title: "Foco (2026): local-first Android screen-time app",
      url: "https://github.com/NicolasSchkurko/Foco",
      bullets: (
        "Kotlin and Jetpack Compose, no accounts and no servers: per-app usage tracking, time limits, and an optional friction overlay.",
      ),
    ),
    (
      title: "LGR100-SteamVR (2026): SteamVR driver for an abandoned headset",
      url: "https://github.com/NicolasSchkurko/LGR100-SteamVR",
      bullets: (
        "Reverse-engineered the HID protocol from a firmware dump and verified it against hardware; 3DOF tracking and stereoscopic rendering on Windows.",
      ),
    ),
    (
      title: "Distributed Microservices Platform (2026): annual project, UTN FRBA",
      url: "https://github.com/NicolasSchkurko/TPA-G3-DDS-2026",
      bullets: (
        "Co-developed 5 Spring Boot microservices (4 domain services + a Thymeleaf front), one MySQL database per service, RabbitMQ messaging, Docker Compose and GitHub Actions CI.",
        "Owned the incentives domain (profiles, ranking, bulk ingestion) and the repository's technical backlog documents.",
      ),
    ),
  ),

  skills: (
    (label: "Languages", items: "Java, Go, JavaScript, C/C++, SQL, Kotlin"),
    (label: "Backend & Data", items: "Spring Boot, Node.js, REST APIs, PostgreSQL, MySQL, SQL Server, BigQuery, pgvector"),
    (label: "Cloud & DevOps", items: "Google Cloud, Cloudflare, Docker, GitHub Actions, RabbitMQ, OAuth 2.0, Git"),
    (label: "Applied AI", items: "OpenAI API, n8n, RAG, agent design, Vertex AI Vision (helmet detection POC)"),
    (label: "Systems & Embedded", items: "ATmega328P, ESP8266, PlatformIO, KiCad, UART, SPI, I2C, HID"),
  ),

  education: (
    (
      place: "UTN FRBA",
      date: "Mar. 2023 – Dec. 2029 (expected)",
      role: "Information Systems Engineering — 4th year",
    ),
    (
      place: "Instituto San José (A-355)",
      date: "2017 – 2022",
      role: "Electronics Technician",
    ),
  ),

  languages: ("Spanish (native)", "English (B2)", "Portuguese (basic)"),
)

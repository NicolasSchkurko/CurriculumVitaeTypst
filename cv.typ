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
        #text(size: 10.5pt)[Software Developer]
      ]
      #v(1.2em)

      #align(center)[#text(size: 11pt, weight: "bold")[Contact]]
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
        icon("icons/map-pin.svg"), text(fill: left-text-color)[Buenos Aires, Argentina \ (Remote)]
      )

      #v(0.6em)
      #align(center)[#text(size: 11pt, weight: "bold")[Key Skills]]
      #line(length: 100%, stroke: 1pt + white)

      *AI & Autonomous Agents* \
      #text(size: 8.5pt)[LLMs (OpenAI, Claude), Agent Architecture, Evaluation Harness, Context Management, RAG, Vector Databases (pgvector), Embeddings.]
      #v(0.3em)

      *Automation & Integration* \
      #text(size: 8.5pt)[n8n, Make, REST APIs, Webhooks, Slack integrations, JSON, Postman.]
      #v(0.3em)

      *Backend Development & Data* \
      #text(size: 8.5pt)[Go (Golang), Java (Spring Boot), Python, JavaScript, SQL (PostgreSQL, SQL Server), GCP (BigQuery).]
      #v(0.3em)

      *CI/CD & Architecture* \
      #text(size: 8.5pt)[GitHub Actions, Docker, Microservices, Event-Driven Architecture (RabbitMQ).]
      #v(0.3em)

      *Languages* \
      Spanish (Native) \
      English (Professional / B2)
    ]
  ],

  // ================= RIGHT COLUMN =================
  [
    #pad(x: 0.8cm, top: 1.2cm, bottom: 1.0cm)[
      = Professional Profile
      #v(0.3em)
      Software Developer and Information Systems Engineering student (UTN FRBA), focused on understanding problems and delivering effective technological solutions. Experienced in designing scalable systems, automating processes, and developing integrations to optimize operations and communication flows, adapting to the specific needs of each project.

      = Work Experience

      #entry("Nucleo Marketing", "Oct. 2022 - Present (Remote)")
      #role("AI & Software Developer")
      - *Production Agents & Bots:* Designed and deployed LLM-powered agents (OpenAI API / n8n) to automate manual processes, customer support, and operational intake.
      - *RAG & Data Pipelines:* Built automated ETL workflows and multi-format document ingestion into vector databases (pgvector) for hallucination-free semantic queries.
      - *API & CRM Integration:* Connected agents and workflows with corporate CRMs (Zoho, Kommo) and third-party services via webhooks and REST APIs.
      - *Databases & Security:* Designed relational persistence and Google Cloud (BigQuery) architectures, enforcing strict validation and access controls.
      - *Monitoring & KPIs:* Built 7 dashboards in Power BI and Looker Studio for tracking operational metrics.

      #entry("Coordline (Precision Marketing)", "Jan. 2023 - Present (Remote)")
      #role("Software Developer & Process Analyst")
      - Developed automated messaging bots using APIs to optimize direct support in digital operations.
      - Designed contact automation workflows, audience segmentation, and lifecycle rules in Microsoft Dynamics CRM.

      = Featured Projects

      #link("https://github.com/NicolasSchkurko/Spec-Growth")[#text(weight: "bold", fill: right-text-color)[Spec-Growth — AI Agent Harness & Governance (OpenCode / SDD)]] \
      Developed a specification-based change management framework (Spec-Driven Development) to mitigate context drift in AI coding agents through deterministic gates, context isolation, and green test evidence.

      #v(0.2em)
      #text(weight: "bold")[Autonomous Multi-Agent System & RAG Pipeline (n8n / pgvector / OpenAI)] \
      Architected an agent system featuring an intent router, specialized subagents, deterministic database tools, and continuous synchronization from Google Drive to pgvector.

      #v(0.2em)
      #link("https://github.com/NicolasSchkurko/TPA-G3-DDS-2026")[#text(weight: "bold", fill: right-text-color)[Distributed Microservices Platform (Java / Spring Boot / RabbitMQ / Docker)]] \
      Co-developed an architecture of 4 microservices with asynchronous messaging, independent databases, Docker, and GitHub Actions CI/CD pipelines with 34 automated integration tests in Postman.

      #v(0.2em)
      #link("https://github.com/NicolasSchkurko/utn-tp-so-Go-2c-2024")[#text(weight: "bold", fill: right-text-color)[Concurrent Operating System Simulator (Go / Golang)]] \
      Implemented concurrent modules in Go simulating CPU scheduling, paged virtual memory, and client-server socket communication.

      = Education

      #entry("UTN FRBA", "Mar. 2023 - Present")
      #role("Information Systems Engineering")

      #entry("Instituto San José (A-355)", "Feb. 2017 - Dec. 2022")
      #role("Electronics Technician")
    ]
  ]
)

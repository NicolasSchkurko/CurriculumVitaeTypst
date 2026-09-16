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
        #text(size: 11pt)[Software Developer]
      ]
      #v(2em)

      #align(center)[#text(size: 11pt, weight: "bold")[Contact]]
      #line(length: 100%, stroke: 1pt + white)

      #grid(
        columns: (auto, 1fr),
        gutter: 8pt,
        row-gutter: 0.8em,
        align: (center + horizon, left + horizon),
        icon("/icons/mail.svg"), link("mailto:schkurkonicolas@gmail.com")[#text(fill: left-text-color)[schkurkonicolas\@gmail.com]],
        icon("/icons/users.svg"), link("https://www.linkedin.com/in/nicolas-schkurko")[#text(fill: left-text-color)[LinkedIn]],
        icon("/icons/map-pin.svg"), text(fill: left-text-color)[Buenos Aires, Argentina]
      )

      #v(0.5em)
      #align(center)[#text(size: 11pt, weight: "bold")[Skills]]
      #line(length: 100%, stroke: 1pt + white)

      *Languages* \
      Spanish (Native) \
      English (Intermediate) \
      Portuguese (Basic)
      #v(0.5em)

      *Software Development* \
      Golang, NextJS, C, C++, Java, JavaScript, Kotlin.
      #v(0.5em)

      *AI & Automation* \
      N8n, OpenAI API, WhatsApp API, Kommo, Wati.
      #v(0.5em)

      *CRM Systems* \
      Zoho CRM, Dynamics CRM.
      #v(0.5em)

      *Data, Cloud & Architecture* \
      PostgreSQL, SQL Server, MongoDB, GCP, BigQuery.
      #v(0.5em)

      *Business Intelligence* \
      Looker Studio, Power BI.
    ]
  ],

  // ================= RIGHT COLUMN =================
  [
    #pad(x: 1.0cm, top: 1.5cm, bottom: 1.5cm)[
      = Professional Profile
      #v(0.5em)
      Software Developer and Information Systems Engineering student, focused on understanding problems and delivering effective technological solutions. Experienced in designing scalable systems, automating processes, and developing integrations to optimize operations and communication flows, adapting to the specific needs of each project.

      = Work Experience

      #entry("Nucleo Marketing", "Oct. 2022 - Present (Remote)")
      #role("Software Developer")
      - Implemented 3 end-to-end Zoho CRM platforms for different clients.
      - Developed and deployed communication channel unification services using Kommo and Wati for multiple clients.
      - Developed 2 conversational bots in n8n integrating the OpenAI API, handling up to 70 daily queries.
      - Automated complex workflows by consuming and integrating third-party REST APIs and custom scripts.
      - Designed data storage and extraction architectures using relational SQL databases and Google Cloud Platform ecosystems, including BigQuery.
      - Built 7 interactive dashboards (5 in Power BI, 2 in Looker Studio) for KPI tracking.

      #entry("Coordline (Precision Marketing)", "Jan. 2023 - Present (Remote)")
      #role("Software Developer")
      - Developed a bot using the WhatsApp API to optimize direct support in digital operations.
      #role("CRM Analyst & Operator")
      - Configured segments and campaigns in MS Dynamics CRM, managing contact analysis and registration.


      = Featured Projects

      #role(link("https://github.com/NicolasSchkurko/TPddsw-UTNFRBA-tiendasol-2025")[E-Commerce Platform (Node.js / React)])
      Co-developed a Full Stack Serverless application, participating in the setup of CI/CD pipelines and non-relational data modeling in MongoDB.

      #role(link("https://github.com/NicolasSchkurko/DDS-tpa-2025-12")[NGO Collaborative Mapping (Java)])
      Co-built a comprehensive platform applying MVC architecture. Implemented MySQL persistence, Full-Text searches, and asynchronous tasks to meet client requirements.

      #role(link("https://github.com/pdepjm/2024-o-tpjuego-ahmeestancodeando")[Video Game Development (Wollok)])
      Collaboratively programmed an application applying advanced OOP concepts. Awarded the "Most Creative Adaptation" special mention in the inter-university Wollok Game 2024 contest, excelling in innovation and joint technical resolution.

      #role(link("https://github.com/NicolasSchkurko/Controlador_Termotanque_Solar_PF_ISJ/tree/main")[IoT Monitoring System (C / C++)])
      Co-designed hardware and firmware for solar water heater control, resolving web telemetry integration between microcontrollers (ESP8266 and ATmega328p) via serial protocol.

      = Education

      #entry("UTN FRBA", "Mar. 2023 - Present")
      #role("Information Systems Engineering")

      #entry("Instituto San José (A-355)", "Feb. 2017 - Dec. 2022")
      #role("Electronics Technician")
    ]
  ]
)
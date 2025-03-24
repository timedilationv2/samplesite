# (@timedilationV2): SampleSite: Modular Static S + Documentation Engine 

> Powered by Markdown, Confluence Integration, PostgreSQL Logging & GitHub Actions

![GitHub Repo Stars](https://img.shields.io/github/stars/timedilationv2/samplesite?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/timedilationv2/samplesite?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/timedilationv2/samplesite?style=for-the-badge)
![GitHub License](https://img.shields.io/github/license/timedilationv2/samplesite?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/timedilationv2/samplesite?style=for-the-badge)

---

🚀 **Live Site:** [timedilationv2.github.io/samplesite](https://timedilationv2.github.io/samplesite)  
📦 **GitHub Package:** [View Maven Artifact](https://github.com/timedilationv2/samplesite/packages/2444424)

📘 Built with:
- 🛠 **Vite + Tailwind Dashboard UI**
- 🧾 **Markdown + Confluence-styled Docs**
- 🗄 **PostgreSQL Logging**
- 🤖 **Maven + GitHub Actions CI/CD**
## ✨ What This Repository Offers

This project is more than just a static site — it's a modular toolchain for **clean documentation pipelines**, **backend logging**, and **open-source deployment** using:

| 🔧 Feature | 🧠 Description |
|-----------|----------------|
| **📁 Static Dashboard (Vite)** | Built with `vite@4.x`, styled using Tailwind CSS for fast, modern UI. |
| **📄 Rendered Markdown Docs** | Dynamically converts `.md` files from `docs/confluence` into HTML pages. |
| **📦 Maven Package** | Deploys compiled Java components (like logging services) as Maven packages. |
| **🧠 PostgreSQL Logging** | Stores metadata about rendered docs for analytics, version control, or usage stats. |
| **🤖 GitHub Actions** | Automates deployment to GitHub Pages + Java Package publishing. |
| **🧾 Confluence-Compatible Style** | All documentation follows structured writing principles inspired by Confluence. |

---

### 🛠️ Built With

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![psycopg2](https://img.shields.io/badge/psycopg2-2.9.10-blue?style=for-the-badge)](https://pypi.org/project/psycopg2/)
[![Vite](https://img.shields.io/badge/Vite-646CFF?style=for-the-badge&logo=vite&logoColor=white)](https://vitejs.dev/)
[![TailwindCSS](https://img.shields.io/badge/Tailwind-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=white)](https://tailwindcss.com/)
[![Maven](https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white)](https://maven.apache.org/)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)](https://github.com/features/actions)
[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-121013?style=for-the-badge&logo=github&logoColor=white)](https://pages.github.com/)

---
---

## 📘 Why Confluence-Inspired Docs Matter

Confluence is trusted by enterprise teams to:

✅ Keep documentation **modular and scalable**  
✅ Provide **context + structure** over flat Markdown  
✅ Encourage **semantic layout**: headers, usage, FAQs, metadata  

> ✍️ This repo lets you **simulate a Confluence-style doc system using just Markdown + HTML**, with PostgreSQL tracking doc metadata. No paid service required.

---

## 📚 Docs Live Preview

Once rendered, your docs are viewable from:

http://localhost:5173/rendered/setup.html
http://localhost:5173/rendered/usage.html
http://localhost:5173/rendered/faq.html

And served via GitHub Pages at:

👉 [https://timedilationv2.github.io/samplesite/rendered/setup.html](https://timedilationv2.github.io/samplesite/rendered/setup.html)

## 🏗 Project Structure

The repository is organized into clearly defined sections:
amplesite/
│
├── dashboard/                  # 🌐 Frontend: Vite + Tailwind static dashboard
│   ├── public/                 #   └── Linked static HTML docs here
│   └── src/                    #   └── (Optional) JS components for frontend
│
├── docs/
│   ├── confluence/             # 📝 Source .md files (setup.md, usage.md, faq.md)
│   └── rendered/               # 📄 Auto-generated HTML pages (rendered via script)
│
├── scripts/
│   └── render_docs.py          # 🧠 Renders Markdown + logs metadata to PostgreSQL
│
├── pom.xml                     # ☕ Maven config for publishing Java services
├── package.json                # 📦 Vite config for frontend build/deploy
├── publish_package.sh          # 🛠 Shell script to publish Maven packages
└── README.md                   # 📘 You’re looking at it!
---

## ⚙️ Suggested Workflow

```md
1. ✍️ Write docs in `docs/confluence/`
2. 🧠 Run `render_docs.py` → auto-render + log doc metadata to PostgreSQL
3. 🌐 View on `localhost:5173/rendered/*.html`
4. 🚀 `npm run build && npm run deploy` to push to GitHub Pages
5. ☕ Optional: `mvn clean deploy` to publish Java utilities to GitHub Maven
## 🚀 Quick Start: Local Development & Usage

This project combines a static frontend with dynamic documentation rendering and PostgreSQL logging. Follow the steps below to set up your environment, build locally, and deploy with confidence.

---

### 1. Clone the Repository

```bash
git clone https://github.com/timedilationv2/samplesite.git
cd samplesite
### 2. Set Up the Environment

Ensure the following tools are installed on your system before continuing.

| Tool           | Required Version | Purpose                            | Installation Link                                 |
|----------------|------------------|------------------------------------|---------------------------------------------------|
| Node.js        | ≥ 18.x           | JS runtime for frontend build      | [nodejs.org](https://nodejs.org/en)               |
| npm            | Included w/ Node | Dependency management              | Included with Node.js                             |
| PostgreSQL     | ≥ 14.x           | Store rendered doc metadata        | [postgresql.org](https://www.postgresql.org)      |
| Python         | ≥ 3.9            | Markdown-to-HTML rendering         | [python.org](https://www.python.org/downloads/)   |
| psycopg2       | Python library   | Python ↔ PostgreSQL connector      | `pip install psycopg2`                            |
| Maven          | Latest stable    | Java package deployment (optional) | [maven.apache.org](https://maven.apache.org)      |
### 3. Install and Run the Frontend

Navigate to the `dashboard/` folder and install frontend dependencies:

```bash
cd dashboard
npm install
npm run dev

http://localhost:5173

This serves the public/ folder including any rendered HTML documentation linked from docs/rendered/.
## 📚 Table of Contents
- [🧠 SampleSite: Modular Static Site + Documentation Engine](#-samplesite-modular-static-site--documentation-engine)
- [✨ What This Repository Offers](#-what-this-repository-offers)
- [🛠️ Built With](#️-built-with)
- [📘 Why Confluence-Inspired Docs Matter](#-why-confluence-inspired-docs-matter)
- [📚 Docs Live Preview](#-docs-live-preview)
- [🏗 Project Structure](#-project-structure)
- [⚙️ Suggested Workflow](#️-suggested-workflow)
- [🚀 Quick Start: Local Development & Usage](#-quick-start-local-development--usage)
    - [1. Clone the Repository](#1-clone-the-repository)
    - [2. Set Up the Environment](#2-set-up-the-environment)
    - [3. Install and Run the Frontend](#3-install-and-run-the-frontend)

---

## 📚 Table of Contents

- [🧠 SampleSite: Modular Static Site + Documentation Engine](#-samplesite-modular-static-site--documentation-engine)
- [✨ What This Repository Offers](#-what-this-repository-offers)
- [🛠️ Built With](#️-built-with)
- [📘 Why Confluence-Inspired Docs Matter](#-why-confluence-inspired-docs-matter)
- [📚 Docs Live Preview](#-docs-live-preview)
- [🏗 Project Structure](#-project-structure)
- [⚙️ Suggested Workflow](#️-suggested-workflow)
- [🚀 Quick Start: Local Development & Usage](#-quick-start-local-development--usage)
    - [1. Clone the Repository](#1-clone-the-repository)
    - [2. Set Up the Environment](#2-set-up-the-environment)
    - [3. Install and Run the Frontend](#3-install-and-run-the-frontend)

---

## 🧠 SampleSite: Modular Static Site + Documentation Engine

> Powered by Markdown, Confluence Integration, PostgreSQL Logging & GitHub Actions

![GitHub Repo Stars](https://img.shields.io/github/stars/timedilationv2/samplesite?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/timedilationv2/samplesite?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/timedilationv2/samplesite?style=for-the-badge)
![GitHub License](https://img.shields.io/github/license/timedilationv2/samplesite?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/timedilationv2/samplesite?style=for-the-badge)

---

🚀 **Live Site:** [timedilationv2.github.io/samplesite](https://timedilationv2.github.io/samplesite)  
📦 **GitHub Package:** [View Maven Artifact](https://github.com/timedilationv2/samplesite/packages/2444424)

📘 Built with:
- 🛠 **Vite + Tailwind Dashboard UI**
- 🧾 **Markdown + Confluence-styled Docs**
- 🗄 **PostgreSQL Logging**
- 🤖 **Maven + GitHub Actions CI/CD**

## ✨ What This Repository Offers

This project is more than just a static site — it's a modular toolchain for **clean documentation pipelines**, **backend logging**, and **open-source deployment** using:

| 🔧 Feature | 🧠 Description |
|-----------|----------------|
| **📁 Static Dashboard (Vite)** | Built with `vite@4.x`, styled using Tailwind CSS for fast, modern UI. |
| **📄 Rendered Markdown Docs** | Dynamically converts `.md` files from `docs/confluence` into HTML pages. |
| **📦 Maven Package** | Deploys compiled Java components (like logging services) as Maven packages. |
| **🧠 PostgreSQL Logging** | Stores metadata about rendered docs for analytics, version control, or usage stats. |
| **🤖 GitHub Actions** | Automates deployment to GitHub Pages + Java Package publishing. |
| **🧾 Confluence-Compatible Style** | All documentation follows structured writing principles inspired by Confluence. |

---

## 🛠️ Built With

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![psycopg2](https://img.shields.io/badge/psycopg2-2.9.10-blue?style=for-the-badge)](https://pypi.org/project/psycopg2/)
[![Vite](https://img.shields.io/badge/Vite-646CFF?style=for-the-badge&logo=vite&logoColor=white)](https://vitejs.dev/)
[![TailwindCSS](https://img.shields.io/badge/Tailwind-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=white)](https://tailwindcss.com/)
[![Maven](https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white)](https://maven.apache.org/)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)](https://github.com/features/actions)
[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-121013?style=for-the-badge&logo=github&logoColor=white)](https://pages.github.com/)

---

## 📘 Why Confluence-Inspired Docs Matter

Confluence is trusted by enterprise teams to:

✅ Keep documentation **modular and scalable**  
✅ Provide **context + structure** over flat Markdown  
✅ Encourage **semantic layout**: headers, usage, FAQs, metadata  

> ✍️ This repo lets you **simulate a Confluence-style doc system using just Markdown + HTML**, with PostgreSQL tracking doc metadata. No paid service required.

---

## 📚 Docs Live Preview

Once rendered, your docs are viewable from:

http://localhost:5173/rendered/setup.html  
http://localhost:5173/rendered/usage.html  
http://localhost:5173/rendered/faq.html  

And served via GitHub Pages at:

👉 [https://timedilationv2.github.io/samplesite/rendered/setup.html](https://timedilationv2.github.io/samplesite/rendered/setup.html)

---

## 🏗 Project Structure

The repository is organized into clearly defined sections:

```plaintext
samplesite/
│
├── dashboard/                  # 🌐 Frontend: Vite + Tailwind static dashboard
│   ├── public/                 #   └── Linked static HTML docs here
│   └── src/                    #   └── (Optional) JS components for frontend
│
├── docs/
│   ├── confluence/             # 📝 Source .md files (setup.md, usage.md, faq.md)
│   └── rendered/               # 📄 Auto-generated HTML pages (rendered via script)
│
├── scripts/
│   └── render_docs.py          # 🧠 Renders Markdown + logs metadata to PostgreSQL
│
├── pom.xml                     # ☕ Maven config for publishing Java services
├── package.json                # 📦 Vite config for frontend build/deploy
├── publish_package.sh          # 🛠 Shell script to publish Maven packages
└── README.md                   # 📘 You’re looking at it!
```

---

## ⚙️ Suggested Workflow

```md
1. ✍️ Write docs in `docs/confluence/`
2. 🧠 Run `render_docs.py` → auto-render + log doc metadata to PostgreSQL
3. 🌐 View on `localhost:5173/rendered/*.html`
4. 🚀 `npm run build && npm run deploy` to push to GitHub Pages
5. ☕ Optional: `mvn clean deploy` to publish Java utilities to GitHub Maven
```

---

##  Quick Start: Local Development & Usage

This project combines a static frontend with dynamic documentation rendering and PostgreSQL logging. Follow the steps below to set up your environment, build locally, and deploy with confidence.

---

### 1. Clone the Repository

```bash
git clone https://github.com/timedilationv2/samplesite.git
cd samplesite
```

### 2. Set Up the Environment

Ensure the following tools are installed on your system before continuing.

| Tool           | Required Version | Purpose                            | Installation Link                                 |
|----------------|------------------|------------------------------------|---------------------------------------------------|
| Node.js        | ≥ 18.x           | JS runtime for frontend build      | [nodejs.org](https://nodejs.org/en)               |
| npm            | Included w/ Node | Dependency management              | Included with Node.js                             |
| PostgreSQL     | ≥ 14.x           | Store rendered doc metadata        | [postgresql.org](https://www.postgresql.org)      |
| Python         | ≥ 3.9            | Markdown-to-HTML rendering         | [python.org](https://www.python.org/downloads/)   |
| psycopg2       | Python library   | Python ↔ PostgreSQL connector      | `pip install psycopg2`                            |
| Maven          | Latest stable    | Java package deployment (optional) | [maven.apache.org](https://maven.apache.org)      |

### 3. Install and Run the Frontend

Navigate to the `dashboard/` folder and install frontend dependencies:

```bash
cd dashboard
npm install
npm run dev
```

http://localhost:5173

This serves the public/ folder including any rendered HTML documentation linked from docs/rendered/.
---

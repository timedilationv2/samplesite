# SampleSite

A minimal MkDocs-powered static documentation site using the Material for MkDocs theme.

This project serves as a boilerplate for structured, clean, and easily extendable documentation—ideal for internal tools, SDKs, and developer portals.

---

## 🚀 Features

- MkDocs + Material theme
- Markdown-based content
- Deployable via GitHub Pages
- CLI-based editing and build
- Integrates with custom packages (e.g. `ditadocs-weather`)

---

## 🔧 Local Setup

```bash
# Clone the repository
git clone https://github.com/timedilationv2/samplesite.git
cd samplesite

# (Optional) create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Serve locally
mkdocs serve

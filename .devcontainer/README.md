# Dev Container Setup

This project includes a VS Code dev container configuration that provides a consistent development environment for working with the Simplicity documentation.

## What's Included

- **Python 3.11** - The latest stable Python version
- **MkDocs** - Static site generator
- **Material for MkDocs** - Modern theme
- **All required extensions** - Including PyMdown Extensions for enhanced markdown features
- **VS Code extensions** - Python support, markdown tools, and linting
- **Port forwarding** - Port 8000 is automatically forwarded for the MkDocs dev server

## Getting Started

1. **Prerequisites**: Make sure you have VS Code and the Dev Containers extension installed
2. **Open in container**: 
   - Open the project in VS Code
   - Press `F1` and select "Dev Containers: Reopen in Container"
   - Or click the notification that appears offering to reopen in container

3. **Start the development server**:
   ```bash
   mkdocs serve
   ```
   The site will be available at `http://localhost:8000`

## Available Commands

- `mkdocs serve` - Start the development server with hot reloading
- `mkdocs build` - Build the static site
- `mkdocs --help` - See all available commands

## VS Code Extensions Included

- **Python** - Full Python language support
- **Pylint** - Python linting
- **Black Formatter** - Python code formatting
- **Markdown All in One** - Enhanced markdown editing
- **Markdown Lint** - Markdown linting and style checking
- **Markdown Mermaid** - Support for Mermaid diagrams
- **Markdown Preview GitHub Styles** - GitHub-style markdown preview

## Customization

You can modify the dev container configuration by editing:
- `.devcontainer/devcontainer.json` - Main configuration
- `.devcontainer/requirements.txt` - Python dependencies

After making changes, rebuild the container by running "Dev Containers: Rebuild Container" from the command palette.

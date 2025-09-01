#!/bin/bash
set -e

echo "Installing Python dependencies..."
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

echo "Building MkDocs site..."
python3 -m mkdocs build

echo "Build completed successfully!"
echo "Output directory: site/"
ls -la site/

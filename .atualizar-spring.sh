#!/bin/bash

# Path to the project
cd /c/Projetos/java/demo-dao-jdbc || {
  echo "Error: file or pasta not found."
  exit 1
}

# displays current status
echo ">>> Repository status:"
git status

# Add all altered files
echo ">>> Adding files..."
git add .

# Create commits with current data
MENSAGE="Update in $(date +'%d/%m/%Y %H:%M:%S')"
echo ">>> Create Commits: $MENSAGE"
git commit -m "$MENSAGE"

# Envia para o repositório remoto
echo ">>> Enviando para o GitHub..."
git push

echo "✅ Atualização concluída!"

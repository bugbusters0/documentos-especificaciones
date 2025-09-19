#!/bin/bash

# Script para compilar el documento modular de ARKA
# Asegúrate de tener todos los archivos .md y header.tex en la carpeta 

echo "🚀 Compilando Documento de Ejecución de ARKA..."

# Verificar que pandoc está instalado
if ! command -v pandoc &> /dev/null; then
    echo "❌ Error: Pandoc no está instalado"
    echo "Instálalo con: sudo apt install pandoc (Ubuntu) o sudo pacman -S pandoc (Arch)"
    exit 1
fi

# Crear directorio de salida si no existe
mkdir -p output

# Compilar el documento principal con todas las secciones
pandoc main.md especificaciones.md \
  --include-in-header=header.tex \
  --pdf-engine=pdflatex \
  --number-sections \
  --toc \
  --toc-depth=5 \
  --variable geometry:margin=2.5cm \
  --variable fontsize:12pt \
  --variable papersize:a4 \
  --variable colorlinks:true \
  --variable linkcolor:blue \
  --variable urlcolor:blue \
  --variable citecolor:blue \
  --variable inputenc:utf8 \
  --variable fontenc:T1 \
  --variable block-headings \
  --variable tables=longtabu \
  -o output/doc-especificaciones-casosdeuso.pdf

if [ $? -eq 0 ]; then
    echo "✅ Documento compilado exitosamente: output/doc-especificaciones-casosdeuso.pdf"
    echo "📄 Abriendo PDF..."
    
    # # Intentar abrir el PDF (funciona en la mayoría de sistemas Linux)
    # if command -v xdg-open &> /dev/null; then
    #     xdg-open output/doc-especificaciones-casosdeuso.pdf
    # elif command -v evince &> /dev/null; then
    #     evince output/doc-especificaciones-casosdeuso.pdf &
    # elif command -v okular &> /dev/null; then
    #     okular output/doc-especificaciones-casosdeuso.pdf &
    # else
    #     echo "📁 El archivo está en: $(pwd)/output/doc-especificaciones-casosdeuso.pdf"
    # fi
else
    echo "❌ Error al compilar el documento"
    echo "Verifica que todos los archivos estén presentes en la carpeta :"
    echo "  - main.md"
    echo "  - especificaciones.md"
    echo "  - header.tex"
fi
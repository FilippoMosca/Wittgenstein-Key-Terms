#!/bin/bash

# Rinomina tutte le cartelle al loro equivalente in minuscolo
find . -depth -type d -execdir rename 'y/A-Z/a-z/' {} +

# Aggiorna i link nei file HTML
find . -type f -name "*.html" -exec sed -i 's/Href="/href="/g' {} +


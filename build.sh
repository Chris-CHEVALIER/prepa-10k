#!/bin/sh
# Construit index.html (document complet pour GitHub Pages) à partir de page.html,
# qui est aussi la source de l'artifact claude.ai.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="fr">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  sed -n '1,/<\/style>/p' page.html
  printf '</head>\n<body>\n'
  sed '1,/<\/style>/d' page.html
  printf '</body>\n</html>\n'
} > index.html

#!/bin/bash

while read plugin version; do
  echo "Installing '${plugin}' (${version})"
  /venv/bin/pip --no-cache-dir install git+https://github.com/alerta/alerta-contrib.git@${version}#subdirectory=${plugin}
done </app/plugins.txt

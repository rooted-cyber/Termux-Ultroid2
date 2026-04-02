#!/bin/bash
for item in "$@"; do

  # 1. Check if command exists
  if command -v "$item" >/dev/null 2>&1; then
   msg "✔ $item (shell command) already installed"
    continue
  fi

  # 2. Check if python package exists
  python -c "import $item" 2>/dev/null
  if [ $? -eq 0 ]; then
    msg "✔ $item (python command) already installed"
    continue
  fi

  # 3. Try installing as system package
  msg "➤ Trying pkg install: $item"
  if pkg install -y "$item" >/dev/null 2>&1; then
    msg "✔ $item installed via pkg"
    continue
  fi

  # 4. Try installing as pip package
  msg "➤ Trying pip install: $item"
  if pip install "$item" >/dev/null 2>&1; then
    msg "✔ $item installed via pip"
  else
    echo "✘ Failed to install $item"
  fi

done

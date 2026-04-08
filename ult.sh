clear
cpp() {
cp ~/Te*d2/ch /bin
chmod 777 /bin/ch
}
upp() {
cp ~/Te*d2/ch $PREFIX/bin
chmod 777 $PREFIX/bin/ch
}
if [ -n "$PREFIX" ]; then
upp
else
cpp
fi
cd ~
msg installing utroid
git clone https://github.com/TeamUltroid/Ultroid
cd Ultroid
pip3 install -r requirements.txt --no-cache-dir
ch() {

for item in "$@"; do

  # 1. shell command check
  if command -v "$item" >/dev/null 2>&1; then
    msg "✔ $item (command) already installed"
    continue
  fi

  # 2. python package check
  python -c "import $item" 2>/dev/null && {
    msg "✔ $item (python) already installed"
    continue
  }

  # 3. pkg install
  msg "➤ Trying pkg install: $item"
  if pkg install -y "$item" >/dev/null 2>&1; then
    msg "✔ $item installed via pkg"
    continue
  fi

  # 4. pip install
  msg "➤ Trying pip install: $item"
  if pp install "$item" >/dev/null 2>&1; then
    msg "✔ $item installed via pip"
  else
    msg "✘ Failed to install $item"
  fi

done

}

# bulk install
for c in pillow coloredlogs gitpython bs4 pytz enhancer telegraph aiohttp requests; do
  msg "➤ Installing $c"
  ch "$c"
done

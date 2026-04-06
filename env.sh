msg create .env
msg
msg
msg No need REDIS,MONGO and many things
msg -n "Enter API_ID : "
read a
msg -n "Enter API_HASH : "
read h
msg -n "Enter SESSION : "
read s
if [[ -n "$s" && -n "$h" && -n "$a" ]]; then
cat >> .env << EOF
API_ID=\$a
API_HASH=\$h
SESSION=\$s
EOF
msg
msg ".env file created successfully ✔️"
fi

print("please wait for starting\n")
from random import choice as c
from os import system as s
try:
  from colorama import Fore as f
except:
  s("pip3 install colorama")
  from colorama import Fore as f

p = print
col = f.LIGHTRED_EX,f.LIGHTGREEN_EX,f.LIGHTYELLOW_EX,f.LIGHTBLUE_EX,f.LIGHTCYAN_EX,f.LIGHTMAGENTA_EX
rc = f"{c(col)}"
r = f.WHITE
try:
  from pyrogram import Client
  print(f"\b {c(col)} Found an existing installation of Pyrogram...\nSuccessfully Imported.\n\n")
except:
  print(f"{c(col)} Installing Pyrogram...")
  s("pip3 install pyrogram tgcrypto")
  print(f"{c(col)} \bDone. Installed and imported Pyrogram.")
  from pyrogram import Client
        
  
API_ID = 2944318
API_HASH = "e9746721493a910d201d898b4329da8f"
print(f"{rc}API_ID :{r} 2944318 (default)")
p(f"{rc}API_HASH : {r} e9746721493a910d201d898b4329da8f (default)")
p("\n\n")
ai = input(f"{c(col)} Enter API_ID :{r} ")
ah = input(f"{c(col)} Enter API_HASH :{r} ")
p(f"{c(col)}\nPlease wait asking phone number\n{c(col)}")
with Client(name="rootedcyber", api_id=ai, api_hash=ah, in_memory=True) as pyro:
  ss = pyro.export_session_string()
  pyro.send_message("me",f"`{ss}`\n\nAbove is your Pyrogram Session String for @TheUltroid. **SHARE it.**")
  p(f"{c(col)} Session has been sent to your saved messages!")
  p(f"\n\n{r}{ss}")
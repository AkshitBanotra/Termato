<div align="center">
 
# 🍅 termato
 
![Shell](https://img.shields.io/badge/Shell-Bash-4EAA25?style=flat-square&logo=gnubash&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=flat-square)
 
A terminal Pomodoro timer written in pure Bash. Colors, sound alerts, desktop notifications, and a typewriter animation — straight in your shell, no dependencies beyond what your system already has.
 
 
</div>
 
---
 
## Features
 
-  **Colored terminal output** — visually distinct work, break, and long break phases
-  **Typewriter animation** — because the terminal should have personality
-  **Desktop notifications** — via `notify-send`
-  **Sound alerts** — via `paplay`
-  **Easy configuration** — change durations by editing three variables at the top of the script
 
---
 
## Requirements
 
| Tool | Purpose |
|------|---------|
| `bash` | Runtime |
| `notify-send` | Desktop notifications |
| `paplay` | Sound alerts |
 
All of these ship with or are easily available on most Linux distros.
 
---
 
## Installation
 
```bash
# 1. Clone the repo
git clone https://github.com/AkshitBanotra/termato.git ~/termato
cd ~/termato
 
# 2. Make the script executable and rename it
chmod +x termato && chmod +x animations
 
# 3. Move it to ~/.local/bin
mkdir -p ~/.local/bin
cp termato ~/.local/bin/termato
 
# 4. Add ~/.local/bin to PATH (if not already)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```
 
After this, `termato` works as a regular command from anywhere in your terminal.
 
---
 
## Usage
 
```bash
termato
```
 
That's it. It runs through the Pomodoro cycle automatically:
 
```
Work session ──→ Short break ──→ Work session ──→ Short break ──→ ... ──→ Long break
```
 
Notifications and sound fire at the end of each phase. The typewriter animation kicks in at transitions.
 
---
 
## Configuration
 
Open the script and edit the variables at the top:
 
```bash
Work=25          # Work session duration in minutes
Break=5          # Short break duration in minutes
Long_Break=15    # Long break duration in minutes
```
 
No flags, no config file — just change the values and save. Keeping it simple.

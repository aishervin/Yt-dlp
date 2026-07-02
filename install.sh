#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}==========================================${NC}"
echo -e "${GREEN}      yt-dlp Auto-Installer for Termux    ${NC}"
echo -e "${GREEN}           Exclusive ☬SHΞN™ made          ${NC}"
echo -e "${BLUE}==========================================${NC}"
echo ""

echo -e "${BLUE}[*] Updating Termux packages...${NC}"
pkg update -y && pkg upgrade -y

echo -e "${BLUE}\n[*] Installing Python and FFmpeg...${NC}"
pkg install python ffmpeg -y

echo -e "${BLUE}\n[*] Updating pip...${NC}"
pip install --upgrade pip

echo -e "${BLUE}\n[*] Installing/Upgrading yt-dlp...${NC}"
pip install --upgrade yt-dlp

echo -e "${GREEN}\n[+] Installation Completed Successfully!${NC}"
echo -e "You can now easily use 'yt-dlp' commands. Enjoy!"

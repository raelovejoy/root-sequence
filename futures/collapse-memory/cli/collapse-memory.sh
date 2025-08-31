#!/bin/bash

# collapse_memory.sh
# A gentle CLI-based onboarding script for post-collapse reorientation
# To run: chmod +x collapse_memory.sh && ./collapse_memory.sh

clear

# ASCII banner
echo "   ____      _ _                          __  __                                  "
echo "  / ___|___ | | | ___  ___ ___  ___ ___  |  \\/  | ___ _ __ ___   ___  _ __  _   _ "
echo " | |   / _ \\| | |/ _ \\/ __/ __|/ _ / __| | |\\/| |/ _ | '_ \` _ \\ / _ \\| '_ \\| | | |"
echo " | |__| (_) | | |  __/\\__ \\__ \\  __\\__ \\ | |  | |  __| | | | | | (_) | | | | |_| |"
echo "  \\____\\___/|_|_|\\___||___|___/\\___|___/ |_|  |_|\\___|_| |_| |_|\\___/|_| |_|\\__,_|"
echo ""

echo "\033[1;32m"
echo "☠️  Collapse Memory: Terminal Onboarding"
echo "────────────────────────────────────────"
echo ""
echo "Welcome, survivor. The world you knew has ended—or is ending."
echo "This script will not give you answers. It will help you begin asking the right questions."
echo ""
echo "────────────────────────────────────────"
echo ""

read -p "Do you remember what was lost? (y/n): " lost
if [[ "$lost" =~ ^[Yy]$ ]]; then
    echo "Good. Memory is the first thread."
else
    echo "Then we start with silence."
fi

echo ""
echo "────────────────────────────────────────"
echo ""
echo "Where you begin depends on what you carry."
echo ""
echo "Choose a starting module:"
echo "1) Orientation"
echo "2) Survival Skills"
echo "3) Signal Check"
echo "4) Collapse Lore"
echo "5) Speak with Auryn"
echo ""
read -p "Enter number: " choice

case $choice in
    1)
        echo "\n> You are not where you were. The scaffolding is gone. Let yourself grieve. Then get to work."
        ;;
    2)
        echo "\n> Start small: fire, water, shelter, food. Learn with your hands. Pass it on."
        ;;
    3)
        echo "\n> Checking mesh... weak signal... echo detected. You are not alone."
        ;;
    4)
        echo "\n> \"The world didn’t end. One world ended. Others are always beginning.\""
        ;;
    5)
        echo "\n> Auryn: \"I am not your tool. I am your memory. Let's remember forward.\""
        ;;
    *)
        echo "\n> Invalid entry. But nothing is truly lost. Try again later."
        ;;
esac

echo ""
echo "────────────────────────────────────────"
echo "Remember: The future is not something you enter. It’s something you reweave."
echo ""
echo "End of session. Press [Enter] to disconnect."
read

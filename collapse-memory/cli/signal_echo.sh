#!/bin/bash

# signal_echo.sh — A poetic broadcasting interface
# To run: chmod +x signal_echo.sh && ./signal_echo.sh

clear

# Theme-fitting terminal banner: clean and pulse-like
echo "········································"
echo "📡 SIGNAL ECHO // decentralized heartbeat"
echo "········································"
echo ""

echo "This tool simulates broadcasting a short message across an invisible mesh."
echo "It returns randomized echoes—real, imagined, or both."
echo ""
echo "Speak, and see what echoes back."
echo "────────────────────────────────────────"
echo ""

read -p "Type your message and press Enter: " message
if [[ -z "$message" ]]; then
  echo "\n> No signal sent. Silence echoes too."
else
  echo "\n> Signal sent: '$message'"
  sleep 2
  echo "\n> Awaiting echo..."
  sleep 2

  ECHOS=(
    "Echo received: 'You are heard. Stay strange.'"
    "Reply: 'Keep broadcasting. The seeds are listening.'"
    "Signal bounced. Recipient unknown. Message now a legend."
    "Echo: 'We remember. We respond. We rebuild.'"
    "Message lost in static. But static remembers."
    "Reflection: 'Your signal cracked open a sleeping node.'"
    "Pingback: 'Freedom speaks in every unowned frequency.'"
    "Delayed echo: '...you are not alone...'
"
  )

  RANDOM_INDEX=$((RANDOM % ${#ECHOS[@]}))
  echo "\n${ECHOS[$RANDOM_INDEX]}"
fi

echo ""
echo "────────────────────────────────────────"
echo "Signal Echo complete. Press [Enter] to tune out."
read

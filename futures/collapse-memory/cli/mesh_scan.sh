#!/bin/bash

# mesh_scan.sh — Simulates checking for nearby mesh signals or allies
# To run: chmod +x mesh_scan.sh && ./mesh_scan.sh

clear

# Banner: diagnostic + tech-feel
echo "╔══════════════════════════════════════╗"
echo "║  🛰 MESH SCAN                        ║"
echo "║  Searching for encrypted fragments  ║"
echo "╚══════════════════════════════════════╝"
echo ""

echo "Initializing mesh interface..."
sleep 1
echo "Pinging nearby memory nodes..."
sleep 2

RESPONSES=(
  "📡 Signal detected: 'auryn.local' — encrypted handshake acknowledged."
  "📻 Echo reply from 'candle-net': weak but stable. Ritual node active."
  "🔕 No signal. Only static. You are not alone, but today you feel it."
  "📡 Response: 'We remember you. Keep broadcasting.'"
  "📶 Connection refused. Node is asleep or unresponsive."
  "💬 Signal found: old zine archive broadcasting on port 1996."
  "🛠  Message from 'root-sibling://terra.local': “Rebuild begins with soil.”"
  "⚠️  Garbled packet received: '...still here...keep singing...’"
  "🌀 Signal detected but indecipherable. Possibly emotional."
)

RANDOM_INDEX=$((RANDOM % ${#RESPONSES[@]}))
echo ""
echo "${RESPONSES[$RANDOM_INDEX]}"
echo ""
echo "────────────────────────────────────"
echo "Scan complete. Mesh status: INTERMITTENT"
echo "Stay tuned. Stay kind. Stay strange."
echo ""
read -p "Press [Enter] to return to quiet."
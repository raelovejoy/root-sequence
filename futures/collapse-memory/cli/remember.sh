#!/bin/bash

# remember.sh — A journaling and memory invocation tool
# To run: chmod +x remember.sh && ./remember.sh

clear

# Banner: quiet, reflective, handwritten-feel
echo "╭──────────────────────────────╮"
echo "│  🧠 REMEMBER                 │"
echo "│  A ritual for what still lives  │"
echo "╰──────────────────────────────╯"
echo ""

echo "This is a space to speak with yourself. To remember forward."
echo "Anything you write will be saved to a local plaintext journal: memory.log"
echo ""
echo "You may exit at any time with [CTRL+C] or by leaving a blank response."
echo "──────────────────────────────────────"

touch memory.log

QUESTIONS=(
  "What did you lose that still echoes inside you?"
  "What do you remember that no one else does?"
  "What skill do you carry that must survive?"
  "Who do you carry with you, even now?"
  "What place calls to you, even in ruins?"
  "What will you teach if you’re given the chance?"
  "What does freedom feel like in your body?"
  "What beauty survived the fall?"
  "What would you say to someone waking up tomorrow?"
)

for question in "${QUESTIONS[@]}"
do
  echo ""
  echo "$question"
  read -p "> " answer
  if [[ -z "$answer" ]]; then
    echo "Ending session..."
    break
  fi
  echo "[$(date)] $question" >> memory.log
  echo "$answer" >> memory.log
  echo "" >> memory.log
  sleep 1

done

echo ""
echo "Your memory has been stored. Read it, remix it, pass it on."
echo "(File: memory.log)"
echo ""
echo "──────────────────────────────────────"
echo "Press [Enter] to close the ritual."
read
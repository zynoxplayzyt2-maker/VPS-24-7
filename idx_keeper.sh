#!/bin/bash

# ======================================================
# PARADOXICAL VPS GLOBAL KEEPER - OPTIMIZED FOR DEBIAN 11
# ======================================================

# SET YOUR LINKS HERE
IDX_URL="https://idx.google.com/u/4/vps123-65461082"
PANEL_URL="https://dash.rgnods.qzz.io/"

echo "------------------------------------------------"
echo "Initializing 24/7 Stay-Alive Protocol..."
echo "Monitoring IDX: $IDX_URL"
echo "Monitoring Panel: $PANEL_URL"
echo "Interval: 25 Seconds"
echo "------------------------------------------------"

# Infinite Loop for 24/7 Uptime
while true; do
  # 1. Ping Google IDX Environment (Simulates a Linux Chrome Browser)
  # This prevents the Gmail session from timing out.
  curl -s -L -k -A "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" "$IDX_URL" > /dev/null

  # 2. Ping Paradoxical Panel (Ensures Cloudflare Tunnel stays open)
  curl -s -L -k "$PANEL_URL" > /dev/null

  # Log the activity
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] Status: Activity Simulated. Pings Sent."

  # Wait exactly 25 seconds as requested
  sleep 25
done

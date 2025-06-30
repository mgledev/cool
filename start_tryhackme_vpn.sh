#!/bin/bash

# Display startup message
echo "🔐 Starting VPN connection to TryHackMe..."

# Define path to OVPN config file
CONFIG="$HOME/Pulpit/tryhackme.ovpn"

# Check if the config file exists
if [ ! -f "$CONFIG" ]; then
    echo "❌ Configuration file not found: $CONFIG"
    echo "👉 Please download it from https://tryhackme.com/access and save it as tryhackme.ovpn on your Desktop."
    exit 1
fi

# File exists - continue with connection
echo "✅ Configuration file found: $CONFIG"
echo "🛜 Connecting... (requires sudo)"

# Start OpenVPN using the config file
sudo openvpn --config "$CONFIG"

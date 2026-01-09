#!/bin/bash
echo "===  SYSTEM MONITOR ==="
echo " Uptime: $(uptime -p 2>/dev/null || echo 'N/A')"
echo -n " CPU model: "; lscpu 2>/dev/null | grep -i 'model name' | sed 's/.*: *//' | head -c 60 || echo "N/A"
echo ""
echo " Memory:"
free -h | head -2
echo " Disk (root):"
df -h / | tail -1
CPU_USE=$(top -bn1 2>/dev/null | grep "Cpu(s)" | awk '{print $2 "%"}' || echo "N/A")
echo " CPU usage: $CPU_USE"

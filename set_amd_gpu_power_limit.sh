#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 CARD_NUMBER POWER_LIMIT"  >&2
  echo ""  >&2
  echo "CARD_NUMBER: GPU card number (0 - 16)"  >&2
  echo "POWER_LIMIT: power limit in Watts (10 - 220)"  >&2
  echo ""  >&2
  exit 1
fi

echo "setting card$1 power limit to $2W"
sudo bash -c "echo $2000000 > /sys/class/drm/card0/device/hwmon/hwmon1/power1_cap"


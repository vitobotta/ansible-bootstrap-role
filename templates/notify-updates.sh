#! /bin/sh

UPDATES=$(yum check-update --quiet | grep -v "^$")
UPDATES_COUNT=$(echo -n "$UPDATES" | wc -l)

if [[ $UPDATES_COUNT -gt 0 ]]; then
  echo "Updates available: ${UPDATES_COUNT}" > /etc/motd
  echo "$UPDATES" | mail -s "Updates for $(hostname): ${UPDATES_COUNT}" {{ notifications_email  }}
else
  echo "System is up to date." > /etc/motd
fi

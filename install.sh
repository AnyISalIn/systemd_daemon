#!/bin/bash
# Install Current Directory All Systemd Unit

for item in `ls *.service`; do
    cp $item /lib/systemd/system/$item
done

# daemon reload
systemctl daemon-reload

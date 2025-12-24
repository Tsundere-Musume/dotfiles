# Kanata Config
This is the config for Kanata.

## Running as a Systemd unit
```
[Unit]
Description=Kanata keyboard remapper
Documentation=https://github.com/jtroo/kanata

[Service]
Type=simple
ExecStart=%h/.cargo/bin/kanata 
Restart=on-failure
RestartSec=3

[Install]
WantedBy=default.target
```

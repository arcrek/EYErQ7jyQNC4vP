#!/bin/sh

wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9.2.R5/astrominer-V1.9.2.R5_amd64_linux.tar.gz

tar -xf astrominer-V1.9.2.R5_amd64_linux.tar.gz

sudo cp astrominer /usr/bin

sudo touch  /etc/systemd/system/astrominer.service

sudo chmod 666 /etc/systemd/system/astrominer.service

cat << EOF > /etc/systemd/system/astrominer.service 
 
[Unit] 
 
Description=astrominer 
 
After=network.target 
 
StartLimitIntervalSec=0 
 
[Service] 
 
Type=simple 
 
Restart=always 
 
RestartSec=3
 
ExecStart=/usr/bin/astrominer -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xcnl4ttkmdsf67syn26j6 -r dero-node-overlode.mysrv.cloud:10300 -r1 community-pools.mysrv.cloud:10300 -p rpc
 
[Install] 
 
WantedBy=multi-user.target 
 
EOF
sudo chmod 600 /etc/systemd/system/astrominer.service
sudo systemctl enable astrominer
sudo systemctl daemon-reload
sudo systemctl restart astrominer

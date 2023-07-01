apt update

apt upgrade -y

wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9.2.R4/astrominer-V1.9.2.R4_amd64_linux.tar.gz

tar xavf astrominer-V1.9.2.R4_amd64_linux.tar.gz

cd astrominer

screen -R

./astrominer -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xcnl4ttkmdsf67syn26j6 -r community-pools.mysrv.cloud:10300

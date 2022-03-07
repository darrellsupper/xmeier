#!/bin/bash

echo "    =================================    "
echo "   |   创建中转服务器脚本V1.0         |    "
echo "   |   制作者：金猎豹  V00.00.001     |   "
echo "   |   日期：2022/3/5                |   "
echo "    =================================    "

sudo apt install ufw
sudo ufw enable
sudo ufw allow 5555
sudo ufw allow 5566
sudo ufw allow 4444
sudo ufw allow 6688
sudo ufw allow 6699
sudo ufw allow 1314
sudo ufw allow 25
sudo ufw allow 3333
sudo ufw status
echo "     =======================================    "
echo "     |  等待5秒，查看防火墙端口是否正常!      |    "
echo "     =======================================    "
sleep 5 

echo "     开始创建中转端口，包括E池及鱼池......    "

sudo apt install redir
sudo redir :5555 asia1.ethermine.org:5555
sudo redir :5566 asia2.ethermine.org:5555
sudo redir :4444 asia1.ethermine.org:4444
sudo redir :6688 eth.f2pool.com:6688
sudo redir :6699 eth-backup.f2pool.com:6688
sudo redir :1314 btc.f2pool.com:1314
sudo redir :3333 btc.f2pool.com:3333
sudo redir :25 btc.f2pool.com:25
echo "     ===========================================    "
echo "     |      中转服务器已经搭建完成！祝您挖矿顺利   |    "
echo "     ===========================================    "
echo ""



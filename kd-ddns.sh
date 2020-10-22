#!/usr/bin/env bash

    read -p "请输入主域名(eg:example.com) :" zhuyuming
    read -p "请输入子域名(eg:123.example.com 只需填入123) :" ziyuming
    read -p "请输入 cloudflare API :" youkey
    read -p "请输入 cloudflare Username:" youuser
    
    wget https://raw.githubusercontent.com/xb0or/KD-DDNS/main/cf-ddns.sh && chmod +x cf-ddns.sh
	
    sed -i "s/zhuyuming/${zhuyuming}/g" /usr/local/bin/cf-ddns.sh
    sed -i "s/ziyuming/${ziyuming}.${zhuyuming}/g" /usr/local/bin/cf-ddns.sh
    sed -i "s/youkey/${youkey}/g" /usr/local/bin/cf-ddns.sh
    sed -i "s/youuser/${youuser}/g" /usr/local/bin/cf-ddns.sh

    cf-ddns.sh
    
    echo "请使用 crontab -e 添加计划任务"
    echo "*/1 * * * * /usr/local/bin/cf-ddns.sh >/dev/null 2>&1"
    echo 

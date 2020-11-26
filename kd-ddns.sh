#!/usr/bin/env bash
echo && echo -e "欢迎使用kd-ddns
请选择您的服务器：
1.国外服务器(有TG通知 @kdddns_bot)
2.国内服务器(无通知)" && echo
	read -e -p "(默认: 取消):" bk_modify
	[[ -z "${bk_modify}" ]] && echo "已取消..." && exit 1
	if [[ ${bk_modify} == "1" ]]; then
		curl https://raw.githubusercontent.com/xb0or/KD-DDNS/main/cf-ddns.sh > /usr/local/bin/cf-ddns.sh && chmod +x /usr/local/bin/cf-ddns.sh
                read -p "请输入主域名(eg:example.com) :" zhuyuming
                read -p "请输入子域名(eg:123.example.com 只需填入123) :" ziyuming
                read -p "请输入 cloudflare API :" youkey
                read -p "请输入 cloudflare Username:" youuser
                read -p "请输入TG接收人ID:" tongzhirenid
	elif [[ ${bk_modify} == "2" ]]; then
		curl https://raw.githubusercontent.com/xb0or/KD-DDNS/main/cf-cn-ddns.sh > /usr/local/bin/cf-ddns.sh && chmod +x /usr/local/bin/cf-ddns.sh
              read -p "请输入主域名(eg:example.com) :" zhuyuming
              read -p "请输入子域名(eg:123.example.com 只需填入123) :" ziyuming
              read -p "请输入 cloudflare API :" youkey
              read -p "请输入 cloudflare Username:" youuser
	else
		echo -e "${Error} 请输入正确的数字(1-2)" && exit 1
	fi
	
    sed -i "s/zhuyuming/${zhuyuming}/g" /usr/local/bin/cf-ddns.sh
    sed -i "s/ziyuming/${ziyuming}.${zhuyuming}/g" /usr/local/bin/cf-ddns.sh
    sed -i "s/youkey/${youkey}/g" /usr/local/bin/cf-ddns.sh
    sed -i "s/youuser/${youuser}/g" /usr/local/bin/cf-ddns.sh
    sed -i "s/tongzhirenid/${tongzhirenid}/g" /usr/local/bin/cf-ddns.sh
    
    cf-ddns.sh
    
    echo "请使用 crontab -e 添加计划任务"
    echo "*/1 * * * * /usr/local/bin/cf-ddns.sh >/dev/null 2>&1"
    echo 

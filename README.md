# 通过此项目修改  [](https://github.com/yulewang/cloudflare-api-v4-ddns)
 


# 一键代码


```
curl -L -O -s https://raw.githubusercontent.com/xb0or/KD-DDNS/main/kd-ddns.sh && chmod +x kd-ddns.sh && ./kd-ddns.sh
```

# 使用教程
`cf-ddns.sh` 如果IP无变化则不运行

`cf-ddns.sh -f true` 为无论IP是否改变强制运行

输入主域名、子域名、API密钥和账户邮箱即可使用


# 后期修改 
一键脚本为一次性 如续修改到 `/usr/local/bin/cf-ddns.sh` 进行手动修改 或者删除此文件再运行一键

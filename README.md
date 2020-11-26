# 通过此项目修改
## [https://github.com/yulewang/cloudflare-api-v4-ddns](https://github.com/yulewang/cloudflare-api-v4-ddns)


# 一键代码


```
curl -L -O -s https://raw.githubusercontent.com/xb0or/KD-DDNS/main/kd-ddns.sh && chmod +x kd-ddns.sh && ./kd-ddns.sh
```

# 使用教程
## 选择服务器类型

### 1.国外服务器(有TG通知）

### 2.国内服务器(无通知)


#### 请输入主域名(eg:example.com)：example.com

#### 请输入子域名(eg:123.example.com 只需填入123)：123

#### 请输入 cloudflare API ：12345678999999
 在 https://dash.cloudflare.com/profile/api-tokens 中获得Global API Key


#### 请输入 cloudflare Username: 123456789@gmail.com
```
为账号邮箱
```
#### 请输入TG机器人token：123456:abcderg

在此机器人创建@BotFather

#### 请输入TG接收人ID:123456789

```
1、打开Telegram，在搜索栏搜索    @userinfobot  
2、选择点击灰色头像
3、点击 Start
4、将第二行Id后数字填入
```

`cf-ddns.sh` 如果IP无变化则不运行

`cf-ddns.sh -f true` 为无论IP是否改变强制运行

# 后期修改 
一键脚本为一次性 如续修改到 `/usr/local/bin/cf-ddns.sh` 进行手动修改 或者删除此文件再运行一键

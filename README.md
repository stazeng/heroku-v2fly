# heroku-v2fly
在Heroku上部署v2ray (vless+tls+ws)

------------- 以下信息是从别处复制来的，部署时或许能作为参考 --------------------------

TIPS:

客户端使用vless websockets tls方式链接服务端

默认UUID: 
    
websocket默认路径: /

可在部署时修改变量UUID和WSPATH，服务端和客户端需相同

可以搭配clouflare cdn使用，参考IBMYes项目的这里，修改url.hostname为app分配到的xxxxxxxxx.herokuapp.com

部署时需要填写subfolderPath选项为kinto, port: 3001, Deploy Timeout建议设置为五分钟

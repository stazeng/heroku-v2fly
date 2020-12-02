# heroku-v2fly
在Heroku上部署v2ray (vless+tls+ws)

------------- 以下信息是从别处复制来的，部署时或许能作为参考 --------------------------

TIPS:

    Heroku部署v2ray,添加了caddy和tor的支持，部署后点击View，成功应显示caddy欢迎页面

    客户端使用vless websockets tls方式链接服务端

    默认UUID: 3dcda15b-755a-48fe-b012-a4cac2aa9197
    
    websocket默认路径: /

    可在部署时修改变量UUID和WSPATH，服务端和客户端需相同

    可以搭配clouflare cdn使用，参考IBMYes项目的这里，修改url.hostname为app分配到的xxxxxxxxx.herokuapp.com

    部署到kintohub: https://github.com/mixool/v2ray/tree/master/kinto 部署到kintohub时，v2ray可以从网络地址读取文件配置，使用自定义的CONFIG更加灵活，支持tor网络，去掉了caddy

部署时需要填写subfolderPath选项为kinto, port: 3001, Deploy Timeout建议设置为五分钟

默认配置是https://github.com/mixool/v2ray/raw/master/kinto/config.json，建议自行复制修改内容后放到GIST，然后设置CONFIG变量为GIST的RAW地址

部署后直接访问External Access返回Bad Request即表示部署成功

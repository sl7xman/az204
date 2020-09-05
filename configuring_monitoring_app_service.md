# 配置和监控App Service的应用

## App Service的配置:

1、覆盖application.json或Web.config中的配置。

2、默认情况下，该配置在Azure的portal是隐藏的。
    
3、可以进行如下配置:

    应用设置: application settings
    连接字符串：connetion strings
    默认文档： default document
    路径映射：Path mapping
    语言栈： language stack（应用runtime）
    自定义容器：custom containers

default document：

    只对windows应用可用。
    导航到web服务器某个目录时要显示的文档列表。
    可以选择构建自定义模型。

path mapping：

Windows：
    自定义IIS的映射处理函数。
    支持虚拟应用或虚拟目录。

容器化：
    支持自定义挂载的存储。



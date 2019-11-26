# autoTimeServer
开机同步windows时间(注册服务) win32 /win64 .普通pc或者windows server都可以


比如双系统, 苹果或者linux系统再切回windows就会出现时差.
而系统就算启用了时间同步也不会开机同步.
然后我就自己delphi写了一个小工具.
注意此项目应该不再维护.够用,没必要.又不是不能用.





## 注册为系统服务

将autoTime复制任意目录
管理员权限 的cmd里输入

> C:\autoTime\Win32\Release\autoTime.exe /install


## 启动服务
> net start autoTimeServer


以后就再也不用管理了.

## 说明
开启后 6秒才会执行第一次同步时间任务.
然后每10分钟同步一次.


### 卸载服务
如果你不再需要了
> C:\autoTime\Win32\Release\autoTime.exe /uninstall

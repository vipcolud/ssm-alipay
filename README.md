# ssm-alipay
阿里支付宝支付，包括：阿里沙箱环境支付宝测试demo，支付宝支付整合到spring+springmvc+mybatis环境，功能非常齐全，只需要修改对应的配置文件即可，帮助文档齐全！:sunny::sunny::sunny::sunny::sunny::sunny:

## 环境准备:star::star::star:
### 一、支付宝测试环境代码测试

#### 1.下载电脑网站的官方demo：

下载地址：https://docs.open.alipay.com/194/105201/
![在这里插入图片描述](https://img-blog.csdn.net/20181019104936337?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0FuZHJvaWRfTXJjaGVu/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

#### 2.下载解压导入eclipse
![在这里插入图片描述](https://img-blog.csdn.net/20181019105233829?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0FuZHJvaWRfTXJjaGVu/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
#### 3.修改相关配置
###### 1.进入支付宝沙箱环境：
https://openhome.alipay.com/platform/appDaily.htm
###### 2.下载对应版本生成RSA密钥工具：
https://docs.open.alipay.com/291/105971
###### 3.打开工具生成相关的公钥和私钥：
![在这里插入图片描述](https://img-blog.csdn.net/20181019113658199?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0FuZHJvaWRfTXJjaGVu/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

###### 4. 将对应的公钥和私钥填入demo的相关配置文件：
![在这里插入图片描述](https://img-blog.csdn.net/20181019114044666?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0FuZHJvaWRfTXJjaGVu/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
###### 5. 将对应的公钥填入沙箱环境生成相关支付宝公钥以及其他配置填入配置文件：
![在这里插入图片描述](https://img-blog.csdn.net/20181019114642984?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0FuZHJvaWRfTXJjaGVu/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
#### 4.运行demo的main方法可以发现支付宝预下单成功:satisfied::satisfied::satisfied::satisfied::satisfied:
![在这里插入图片描述](https://img-blog.csdn.net/20181019115224969?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0FuZHJvaWRfTXJjaGVu/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
###### 1.日志打印出的qr_code就是我们需要的二维码，用相关的二维码生成工具可以生成相对应的二维码
![在这里插入图片描述](https://img-blog.csdn.net/20181019115859997?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0FuZHJvaWRfTXJjaGVu/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
###### 2.下载相对应的android版本的沙箱支付宝app扫描二维码可以进行支付:satisfied::satisfied::satisfied::satisfied::satisfied:
对应商家和买家账号 https://openhome.alipay.com/platform/appDaily.htm?tab=account
沙箱支付宝app https://openhome.alipay.com/platform/appDaily.htm?tab=tool



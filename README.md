# FQUtils
> iOS开发常用工具类：日期时间选择器、提醒框Toast、监听屏幕截屏和录屏、指纹和脸部识别、文本关键字高亮、添加水印、页面截图和获取当前控制器。

## [博客详细介绍](https://wuwufq.blog.csdn.net/)

FQUtils工具 | 功能简介 | 主要使用类
| :--: | :--: | :--: |
获取当前控制器 | 获取当前控制器<br>获取view所在的控制器<br>获取KeyWindow | FQUtils
屏幕截图截图 | 主动获取当前屏幕的截图，不是页面，是整个屏幕 | FQUtils
添加水印 | 对view添加水印，自定义文字 | FQUtils
文本关键字高亮 | 可用于搜索框，对返回的关键字高亮显示 | FQUtils
日期时间选择器 | 年月日选择器<br>时分秒选择器<br>年月日时分秒选择器<br>可自定义字体颜色 | FQDateTimePickerView
提醒框Toast | 可配置显示的时间<br>可配置显示的位置<br>可配置显示的父视图 | FQToast
监听屏幕截屏和录屏 | 全局监听，在需要的地方实现回调即可 | FQScreenMonitor
指纹和脸部识别 | 识别系统的指纹和面容ID，可用于解锁APP | FQBiometryContext

# 集成方式
## 手动集成
1. 把项目`clone`或`Download ZIP`到本地
2. 把项目内的`FQUtilsSDK.framework`拖到你的项目里
3. 设置 `Embed&Sign`

![image](https://user-images.githubusercontent.com/23627803/125395602-fc978c80-e3dd-11eb-9ddc-91888041af52.png)


## cocoaPods自动集成
_这里默认大家对cocoaPods都是信手拈来的_
1. 在Podfile引入
```bash
pod 'FQUtilsSDK'
```
2. 在终端 cd 到你的项目根路径
```bash
pod install
```
3. 在用到时间选择器的地方引用头文件
```object-c
#import <FQUtilsSDK/FQUtilsSDK.h>
```
# 使用案例
> `FQUtilsDemo`里有详细的使用案例，可根据自己所需选择使用。

<div  align = 'center' >
<img src="https://user-images.githubusercontent.com/23627803/125396584-52b8ff80-e3df-11eb-90b5-b55af102e5a0.gif" width = 40% height = 30% >
</div>


# [博客详细介绍](https://wuwufq.blog.csdn.net/)



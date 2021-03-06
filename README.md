# ZJNotice
`提醒组件`  

## 概要

`swift5`写成的简单易用强大的提醒组件  
总的来说有7种类型，包括纯`文字`，`等待`，`等待附加文字`，`成功提示`，`失败提示`，`提醒提示`，`单个文字`
每一种又包含3种效果：`不自动消失`的，`自动消失`的，`自动消失后回调方法`的

## 示例图片

![示例图片](Images/demo.png)

## 安装方法

```bash
pod 'ZJNotice', '~> 1.4'
```

或者

```bash
pod 'ZJNotice', git: 'https://github.com/psvmc/ZJNotice.git'
```

## 使用代码

导入

```swift
import ZJNotice
```

调用

```swift 
//清除等待
self.clearWaitNotice();

//清除全部
self.clearAllNotice();

//文字不消失
self.showNoticeText("我是文字我是文字我是文字我是文字我是文字")

//文字自动消失
self.showNoticeText("我是文字我是文字我是文字我是文字我是文字", time: 1.2)

//文字消失后回调
self.showNoticeText("我是文字我是文字我是文字我是文字我是文字", time: 1.2, callbackBlock: {
	self.showNoticeText("我是回调", time: 1.2);
})

//等待不消失
self.showNoticeWait();

//等待自动消失
self.showNoticeWait(1.2);

//等待消失后回调
self.showNoticeWait(1.2, callbackBlock: {
	self.showNoticeText("我是回调", time: 1.2);
})

//等待带文字
self.showNoticeWait(text: "我是文字");

//等待带文字自动消失
self.showNoticeWait("我是文字", time: 1.2)

//等待带文字消失后回调
self.showNoticeWait("我是文字", time: 1.2, callbackBlock: {
	self.showNoticeText("我是回调", time: 1.2);
})

//成功不消失
self.showNoticeSuc("我是文字");

//成功自动消失
self.showNoticeSuc("我是文字", time: 1.2)

//成功消失后回调
self.showNoticeSuc("我是文字", time: 1.2, callbackBlock: {
	self.showNoticeText("我是回调", time: 1.2);
})

//错误不消失
self.showNoticeErr("我是文字");

//错误自动消失
self.showNoticeErr("我是文字", time: 1.2)

//错误消失后回调
self.showNoticeErr("我是文字", time: 1.2, callbackBlock: {
	self.showNoticeText("我是回调", time: 1.2);
})

//文字不自动消失
self.showNoticeInfo("我是文字")

//文字自动消失
self.showNoticeInfo("我是文字", time: 1.2)

//文字消失后回调
self.showNoticeInfo("我是文字", time: 1.2, callbackBlock: {
	self.showNoticeText("我是回调", time: 1.2);
})

```

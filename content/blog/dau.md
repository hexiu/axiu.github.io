---
title: "简易的文件中转站"
date: 2021-08-02T11:09:57+08:00

publishdate: "2021-08-02T11:09:57+08:00"
lastmod: "2021-08-02T11:09:57+08:00"
draft: false
tags: ["服务端", "blog"]
series: ["文件传输"]
categories: ["Sci"]
img: "https://download.jaxiu.cn/2021-08-02-11-19-58.png"
toc: true
summary: "一个简单便捷好用的文件中转站"

---

## 一个简单实现的文件中转站 

[源码地址点这里](https://github.com/hexiu/DownAndUpload) 

### 支持系统
- web系统上传文件  [Demo](http://up.jaxiu.cn/download/upload.html)
- linux 终端 [客户端](http://up.jaxiu.cn/download/client.linux)
- windows 终端 [客户端](http://up.jaxiu.cn/download/client.exe)
- mac 终端 [客户端](http://up.jaxiu.cn/download/client.mac)

### 简介
- 上传文件到我的云服务空间，暂存30分钟，到点会自动清理 
- 目前没有安全验证，下一版本新增 
- 此工具禁止大文件传输
  
### 缘由
- 经常操作服务器，很多时候服务器都有各种验证或者存在公私网的问题导致文件传输比较痛苦，临时搞一个中转站提升自己的效率。 

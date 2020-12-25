<!--
 * @Author: your name
 * @Date: 2020-12-08 11:58:02
 * @LastEditTime: 2020-12-25 14:46:06
 * @LastEditors: jaxiu
 * @Description: In User Settings Edit
 * @FilePath: /axiu.github.io/Readme.md
-->

### blog 搭建手册

- 新的环境下，主题需要在github仓库获取 `cd themes; git clone git@github.com:orianna-zzo/AllinOne.git`
- 安装hugo
- 测试运行命令 `hugo server --theme=AllinOne`
- 编译博客：`将 public 下的文件迁移到 博客的 github blog项目下`

### 常用插件

- 七牛云上传图片
  - 安装插件 `paste image to qiniu`, 记得看清楚快捷键， 不是 cmd + v ， 是 alt + cmd + v。
- markdown 语法


### 博客书写基础语法

- 创建blog `hugo new blog/xxx.md`
- 为blog文章增加标签等一系列信息

```publishdate: "2018-08-13+08:00"
lastmod: "2018-08-13+08:00"
draft: false
tags: ["vscode", "blog"]
series: ["vscode"]
categories: ["Sci"]
img: "https://download.jaxiu.cn/2019-08-22-16-13-00.png"
toc: true
summary: "This is an example of adding an intro picture to the post. "```

- 生成blog `hugo server --theme=AllinOne -D`
- over

### 脚本一键生成发布blog 

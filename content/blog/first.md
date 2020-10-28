---
title: "玩转vscode"
date: 2019-08-21T15:30:35+08:00

publishdate: "2018-08-13+08:00"
lastmod: "2018-08-13+08:00"
draft: false
tags: ["vscode", "blog"]
series: ["vscode"]
categories: ["Sci"]
img: "https://download.jaxiu.cn/2019-08-22-16-13-00.png"
toc: true
summary: "This is an example of adding an intro picture to the post. "

---

# ubuntu玩转vscode

> 主要内容：ubuntu 使用vscode实现日常的各种需求，如何写书？golang编程，大幅度提升自己的效率

## vscode之golang编程

### ubuntu之基础构建

#### 基础软件设施安装

##### shell 篇

- 一句话安装zsh `sudo apt-get install git zsh wget -y; sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

##### 编程篇

- vscode 官网下载安装，使用自带的应用市场安装，可能会不能使用中文输入法

##### golang IDC

- golang.org 下载最新的golang 版本
- 安装目录一般将基础环境放在/opt下
- 创建gopath ，编辑 ~/.zshrc ，设置环境变量`GOROOT, GOPATH, PATH指定GOROOT，GOPATH , 配置环境变量 GO111MODULE=on, 开启 go mod`，机器重启

### vscode 插件

#### 插件选择

- go
- koroFileHeader

#### 插件配置

```json
{
    "go.goroot": "GOROOT",
    "go.gopath": "GOPATH",
    "go.inferGopath": true,
    "go.autocompleteUnimportedPackages": true,
    "go.gocodePackageLookupMode": "go",
    "go.gotoSymbol.includeImports": true,
    "go.useCodeSnippetsOnFunctionSuggest": true,
    "go.useCodeSnippetsOnFunctionSuggestWithoutType": true,
    "go.docsTool": "gogetdoc",
    "go.useLanguageServer": true,
    "go.alternateTools": {
        "go-langserver": "gopls",
    },
    "go.languageServerExperimentalFeatures": {
    "format": true,
    "autoComplete": true,
    "gopls": {
        "enablePlaceholders": true,
    },
},
"fileheader.customMade": {
    "Author": "jaxiu",
    "GitHub": "https://github.com/hexiu",
    "Date": "Do not edit", // 文件创建时间(不变)
    "LastEditors": "jaxiu", // 文件最后编辑者
    "LastEditTime": "Do not edit" // 文件最后编辑时间
},
"fileheader.configObj": {
    "beforeAnnotation": {
        "py": "#!/usr/bin/env python\n# coding:UTF-8", // py文件默认，可修改
        "sh": "#!/bin/bash\n# " // sh文件默认，可修改
    },
    "language": {
        "languagetest": {
        "head": "/$$",
        "middle": " $ @",
        "end": " $/"
    },
    "sh": {
        "head": "##",
        "middle": " # @",
        "end": "##"
    },
    "py": {
        "head": "'''",
        "middle": " @",
        "end": "'''"
    },
    "go": {
        "head": "///",
        "middle": " // @",
        "end": "//"
    },
    "java": {
        "head": "/**",
        "middle": " * @",
        "end": " */"
    }
    },
    "autoAdd": false, // 自动添加头部注释开启才能自动添加
    "autoAlready": false, // 默认开启:只让支持的语言，自动添加头部注释. false:所有文件自动添加头部注释
    },
    "http.proxy": "http://domain:12345",
    "go.coverOnTestPackage": false,
    "files.autoSave": "afterDelay",
    "editor.formatOnSave": true,
    "window.zoomLevel": 1,
    "[go]": {
    },
}
```

通过以上的配置，vscode 已经完全可以驾驭golang编程

### vscode 之 markdown高级用法

#### 基础环境构建

##### 七牛云账号注册

- 打开 [七牛云官网](https://www.qiniu.com) ，注册七牛云用户
- 进入控制台
- 点击对象存储
- 初始化一个空间，后续vscode 默认上传的图片在这里
- 打开个人中心的密钥管理初始化一对密钥，这是api上传使用的凭证。
- 拿着这些信息，以及七牛云分配的域名配置vscode的七牛云插件 （*此处的插件配置是页面化的*）

##### vscode 插件安装

- markdownlint
- paste image to qiniu

##### vscode 插件配置

- 此处参考七牛云账号注册模块

#### markdown 使用测试

- 使用Vscode书写markdown，然后去复制一个图片粘贴到粘贴版，在vscode中按快捷键  : `Ctrl + Alt + V`
- 文件上传成功的截图
- 这里可能会有上传失败的问题，可以看以下github下的issues
- 使用issues中的打包版本替换原有的版本（一般的vscode插件放在 ~/.vscode下）
=======
API
```
├── admin.sh                     # 进程的start|stop|status|restart控制文件
├── conf                         # 配置文件统一存放目录
│   ├── config.yaml              # 配置文件
│   ├── server.crt               # TLS配置文件
│   └── server.key
├── config                       # 专门用来处理配置和配置文件的Go package
│   └── config.go
├── db.sql                       # 在部署新环境时，可以登录MySQL客户端，执行source db.sql创建数据库和表
├── docs                         # swagger文档，执行 swag init 生成的
│   ├── docs.go
│   └── swagger
│       ├── swagger.json
│       └── swagger.yaml
├── handler                      # 类似MVC架构中的C，用来读取输入，并将处理流程转发给实际的处理函数，最后返回结果
│   ├── handler.go
│   ├── sd                       # 健康检查handler
│   │   └── check.go
│   └── user                     # 核心：用户业务逻辑handler
│       ├── create.go            # 新增用户
│       ├── delete.go            # 删除用户
│       ├── get.go               # 获取指定的用户信息
│       ├── list.go              # 查询用户列表
│       ├── login.go             # 用户登录
│       ├── update.go            # 更新用户
│       └── user.go              # 存放用户handler公用的函数、结构体等
├── main.go                      # Go程序唯一入口
├── Makefile                     # Makefile文件，一般大型软件系统都是采用make来作为编译工具
├── model                        # 数据库相关的操作统一放在这里，包括数据库初始化和对表的增删改查
│   ├── init.go                  # 初始化和连接数据库
│   ├── model.go                 # 存放一些公用的go struct
│   └── user.go                  # 用户相关的数据库CURD操作
├── pkg                          # 引用的包
│   ├── auth                     # 认证包
│   │   └── auth.go
│   ├── constvar                 # 常量统一存放位置
│   │   └── constvar.go
│   ├── errno                    # 错误码存放位置
│   │   ├── code.go
│   │   └── errno.go
│   ├── token
│   │   └── token.go
│   └── version                  # 版本包
│       ├── base.go
│       ├── doc.go
│       └── version.go
├── README.md                    # API目录README
├── router                       # 路由相关处理
│   ├── middleware               # API服务器用的是Gin Web框架，Gin中间件存放位置
│   │   ├── auth.go
│   │   ├── header.go
│   │   ├── logging.go
│   │   └── requestid.go
│   └── router.go
├── service                      # 实际业务处理函数存放位置
│   └── service.go
├── util                         # 工具类函数存放目录
│   ├── util.go
│   └── util_test.go
└── vendor                         # vendor目录用来管理依赖包
    ├── github.com
    ├── golang.org
    ├── gopkg.in
    └── vendor.json
```

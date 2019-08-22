---
title: "玩转vscode"
date: 2019-08-21T15:30:35+08:00

publishdate: "2018-08-13+08:00"
lastmod: "2018-08-13+08:00"
draft: false
tags: ["vscode", "blog"]
series: ["Example"]
categories: ["Sci"]
img: "http://download.jaxiu.cn/2019-08-21-16-18-15.png"
toc: true
summary: "This is an example of adding an intro picture to the post. "

---

#  ubuntu玩转vscode 

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
#####  七牛云账号注册
##### vscode 插件安装
- markdownlint 
- paste image to qiniu 

##### vscode 插件配置

#### markdown 使用测试

测试
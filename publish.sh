###
 # @Date: 2020-12-25 14:47:43
 # @LastEditors: jaxiu
 # @LastEditTime: 2020-12-25 15:03:31
 # @FilePath: /axiu.github.io/publish.sh
### 

#!/bin/bash 
# 
hugo -D
rm -rf ../hexiu.github.io/*
cp -rp ./public/* ../hexiu.github.io/ 
cd ../hexiu.github.io/
git add .
git commit -m "fix: `date +%Y%m%d-%H%M`发布新文章"
git push origin master
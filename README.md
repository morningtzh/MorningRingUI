# MorningRing UI

本项目为 MorningRing Web界面

## 构建及使用

执行 `sh scripts/build.sh` 命令进行构建。
构建时将会下载Repo [MorningRingUIPublish](https://github.com/morningtzh/MorningRingUIPublish)
到build目录，并进行构建。

构建完毕后将会把结果上传到以时间戳为branch一部分的新分支。例如 *1.0.1677770078*

使用时请将 *build/publish/index.html* 文件拷贝到MorningRing，并烧写到ESP32中。

## CDN

*build/publish/index.html* 中的所有路径均已替换成 *https://cdn.jsdelivr.net/gh/morningtzh/MorningRingUIPublish@${PUBLIC_VERSION}/publish/* 开头的CDN路径。

路径格式：
`https://cdn.jsdelivr.net/gh/[username]/[repo]@[branch/tag/commitid]/[path]/[to]/[file]`

例如：
`https://cdn.jsdelivr.net/gh/morningtzh/MorningRingUIPublish@1.0.1677771068/publish/static/js/main.6128cea3.js`

[jsdelivr doc](https://www.jsdelivr.com/documentation#id-github)

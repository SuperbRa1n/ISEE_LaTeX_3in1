# ISEE_LaTeX_3in1
浙江大学信息与电子工程学院毕业论文（设计）三合一文档LaTeX模板

参考了[一位学长的仓库](https://github.com/Wangqsooooo/Latex_template)，进行了一些改动。

有问题欢迎提issue或提交PR以改进本模板。

## 使用方法

### 1. 在线运行（推荐）

使用[overleaf](https://overleaf.com)在线平台进行编写。具体操作为：将本仓库的压缩包下载到本地后导入为Overleaf Project（如果是Overleaf的付费用户，可以Fork本仓库后直接导入你的GitHub仓库链接）。在Menu中选择Complier为xelatex。

### 2. 本地运行

#### 方法一：Vscode的LaTeX Workshop插件
本仓库已配置好LaTeX Workshop的编译链，直接使用该插件编写文档即可，文件更新并保存后自动编译。

#### 方法二：Makefile

在终端运行
```bash
make all
```
即可编译生成最终的pdf文件。如需清理日志，则在终端运行
```bash
make clean
```

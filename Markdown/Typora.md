```markdown
ctrl + / 切换编辑语法模式/预览模式

ctrl + 1 ~6 标题1~6 等同于
一级标题：#+空格+标题内容
二级标题：##+空格+标题内容
三级标题：###+空格+标题内容
……
最多六级标题

ctrl + B 粗体

ctrl + I 斜体

ctrl + T 表格

```+回车 代码块

引用：>+空格

转义字符： \ + 字符

无序列表：” - “+ 空格 或 “ * ” + 空格

有序列表：数字+“.”+空格

生成目录：[TOC]按回车

选中一整行：ctrl+l

选中单词：ctrl+d

选中相同格式的文字：ctrl+e

跳转到文章开头：ctrl+home

跳转到文章结尾：ctrl+end

搜索：ctrl+f

替换：ctrl+h

引用：输入>之后输入空格

代码块：ctrl+alt+f

加粗：ctrl+b

倾斜：ctrl+i

下划线：ctrl+u

删除线：alt+shift+5 或 ～～内容～～

分割线：- - - 或***

插入链接：ctrl+k

数学公式：$$ + enter

表情: :+单词+:

常用表情地址：https://www.webfx.com/tools/emoji-cheat-sheet/

目录：[toc] + enter

插入图片：直接拖动到指定位置即可或者ctrl+shift+i

```

## 代码块自动填充语言

AutoHotKey

```ahk
#IfWinActive ahk_exe Typora.exe
{
    ; Ctrl+Alt+K javaCode    
    ; crtl是  ^ , shift是 + , k是  k键
    ^+k::addCodeJava()
}
addCodeJava(){
Send,{```}
Send,{```}
Send,{```}
Send,js
Send,{Enter}
Return
}
```


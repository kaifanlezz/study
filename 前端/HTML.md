# HTML 超文本标记语言 

Hyper Text Markup Language

### 组成

示例：`<p>我的猫咪脾气暴躁</p>`

#### 元素

1.开始标签（属性attribute）---\<p>

2.内容---我的猫咪、、、

3.结束标签---\</p>

#### 空元素

如：图片

`<img src="path" alt="描述文本">`

#### 其他

```html
<!DOCTYPE html>	
# 曾用于链接编写守则，现在只是用来保证文档正常读取

<html></html>	
# 根元素 包含整个页面内容

<head></head>	
# 不渲染 包含页面描述 CSS样式表 字符编码声明等

<meta charset="utf-8">	
# 指定utf-8编码

<tittle></tittle>	
# 标题 不渲染 显示在标签页上

<html lang="zh-CN">
# 指定语言

<p>
    <em>强调-斜体显示</em>
    <strong>强调-粗体显示</strong>
    <b>粗体</b>
    <i>斜体</i>
    <u>下划线</u>
    </p>
# 现在一般都用CSS完成这些操作，更加方便
```



### 标记文本

#### 标题

`<h1></h1>`如此 共六级标题

`<h2></h2>`

#### 段落

`<p></p>`

#### 列表

`<ul></ul>`

无序列表列表中的元素用`<li></li>`包围

```html
<ul>
	<li>a</li>
	<li>b</li>
</ul>
```

`<ol></ol>`有序列表

#### 链接

`<a href="path or url">`words`</a>`

#### 元数据

```html
<meta charset="UTF-8">
<meta name="author" content="zuorenhao">
<meta name="dsecription" content="words may be present at the results of Search Engine">
```

#### 图标

```html
<link rel="icon" href="my-ico-file.ico" type="img/x-icon">
```

#### CSS

```html
<link rel="stylesheet" href="my-css-file.css">
```

#### scripts

```html
<script src="my-hs-file.js" defer>
</script>
```

#### 超链接

```html
<p>
    创建一个 指向百度的超链接
    <a href="www.baidu.com"
       target="_self"	#打开链接的方式
       title="说明文字">在我的页面上显示的内容->baidu</a>
</p>
<!--target值：
_blank:在新窗口中打开链接
_parent:在父窗体中打开链接
_self :在当前窗体打开链接（默认值）
_top：在当前窗体打开链接，并替换当前的整个窗体(框架页)
默认为本窗口标签页新建，可缺省
-->
```

```html
# 块级链接
<p>
    创建一个 指向百度的超链接
    <a href="www.baidu.com" target="-blank" title="baidu logo">
        <img src="my-img-file.png"
             </a>
</p>
```

```url
# url
href="../../../path/to/my/file.png"
```

```html
# 文档（html)片段
# 先在that.html中为元素分配id
<h2 id="my-id">
    something
</h2>

<p>
    链接到h2:something<a href="that.html#my-id"></a>
</p>

<p>
    同一文档中可以省略?.html<a href="#my-id"></a>
</p>
```

```html
# 下载链接
# 链接到要下载的资源而不是在浏览器中打开
<a href="..."
   download="file-name.exe">
	present
</a>
```



#### 注释

```html
# html	单/多行
<!-- 注释内容  --> 
```

```css
# css注释：
/*这是单行注释*/
/*
    这是多行注释
    这是多行注释
*/
```

#### 无语义元素

啥也不是，方便找到

`<span>`	`<div>`



#### 换行

`<br>`

水平分割线

`<hr>`

效果如下：

<hr>



### 高阶文字排版

[高阶文字排版 - 学习 Web 开发 | MDN](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting)

这一部分网站很规整，就，不需要整理了

#### 计算机代码

```
<code>: 用于标记计算机通用代码。
<pre>: 用于保留空白字符（通常用于代码块）——如果您在文本中使用缩进或多余的空白，浏览器将忽略它，您将不会在呈现的页面上看到它。		  但是，如果您将文本包含在<pre></pre>标签中，那么空白将会以与你在文本编辑器中看到的相同的方式渲染出来。
<var>: 用于标记具体变量名。
<kbd>: 用于标记输入电脑的键盘（或其他类型）输入。
<samp>: 用于标记计算机程序的输出。
```





### 文档的基本组成部分

- 页眉

    `<header>`

- 导航栏

    `<nav>`

- 主内容

    `<main>`

- 侧边栏

    `<aside>`

- 页脚

    `<footer>`



### 调试

让你的HTML页面通过 [Markup Validation Service](https://validator.w3.org/)。由 W3C（制定 HTML、CSS 和其他网络技术标准的组织） 创立并维护的标记验证服务。把一个 HTML 文档加载至本网页并运行 ，网页会返回一个错误报告。



### 多媒体嵌入

#### 图片

```html
<img src="path/to/file/my-img.png"
     alt="描述文本"
     width="像素宽度"
     height="像素高度"
     title="图片标题 在鼠标悬停时显示" 
     >
```

```css
# CSS 背景图片
p {
    background-image:
        url("url-to-img.png");
}
```

#### 视频

```html
<video src="name.mp4" controls width="300" height="400">
    autoplay loop muted 
    poster="预览图片.png"
    preload="none"/"auto"/"metadata"	# 缓冲：不/是/仅元数据
	<p>
        哈哈哈<a href="url/name.mp4">点这儿看</a>
    </p>
</video>
```

.webm









#### 与音频

#### 对象
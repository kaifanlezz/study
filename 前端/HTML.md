# HTML 超文本标记语言 

Hyper Text Markup Language



[TOC]



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
# 头部 不渲染 包含页面描述 CSS样式表 字符编码声明等

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



#### 头部元素

[文档的标题](https://www.w3school.com.cn/tiy/t.asp?f=eg_html_title)

`<title> 标题定义文档的标题。`

[所有链接一个目标](https://www.w3school.com.cn/tiy/t.asp?f=eg_html_base)

链接的默认地址。

```html
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
```



[文档描述](https://www.w3school.com.cn/tiy/t.asp?f=eg_html_meta)

使用 <meta> 元素来描述文档。

[文档关键词](https://www.w3school.com.cn/tiy/t.asp?f=eg_html_keywords)

使用 <meta> 元素来定义文档的关键词。

[重定向用户](https://www.w3school.com.cn/tiy/t.asp?f=eg_html_redirect)

如何把用户重定向到新的网址。页面跳转😋

```html
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Refresh" content="5;url=http://www.w3school.com.cn" />
</head>

<body>
<p>
对不起。我们已经搬家了。您的 URL 是 <a href="http://www.w3school.com.cn">http://www.w3school.com.cn</a>
</p>

<p>您将在 5 秒内被重定向到新的地址。</p>

<p>如果超过 5 秒后您仍然看到本消息，请点击上面的链接。</p>

</body>
</html>

```

#### 语义元素

| 标签           | 描述                                               |
| :------------- | :------------------------------------------------- |
| `<article>`    | 定义文章。                                         |
| `<aside>`      | 定义页面内容以外的内容。                           |
| `<details>`    | 定义用户能够查看或隐藏的额外细节。                 |
| `<figcaption>` | 定义 `<figure>` 元素的标题。                       |
| `<figure>`     | 规定自包含内容，比如图示、图表、照片、代码清单等。 |
| `<footer>`     | 定义文档或节的页脚。                               |
| `<header>`     | 规定文档或节的页眉。                               |
| `<main>`       | 规定文档的主内容。                                 |
| `<mark>`       | 定义重要的或强调的文本。                           |
| `<nav>`        | 定义导航链接。                                     |
| `<section>`    | 定义文档中的节。                                   |
| `<summary>`    | 定义 `<details>` 元素的可见标题。                  |
| `<time>`       | 定义日期/时间。                                    |

#### 无语义元素

`<span>`		- 突出等

`<div>` 	  	- box等


![HTML5 语义元素](mdAssets/HTML.asset/ct_sem_elements.png)

### 标记文本

#### 标题

`<h1></h1>`如此 共六级标题

`<h2></h2>`

默认情况下，HTML 会自动地在**块级元素**（如标题）前后添加一个额外的空行，比如段落、标题元素前后。

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



```css
/* 删除项目符号以及外边距和内边距（填充） */
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
```

#### 表格

表格由 `<table>` 标签来定义。每个表格均有若干行（由 `<tr>` 标签定义），每行被分割为若干单元格（由 <td> 标签定义）。字母 td 指表格数据（table data），即数据单元格的内容。数据单元格可以包含文本、图片、列表、段落、表单、水平线、表格等等。

`表格<table>`

`行<td>`

`单元格<tr>`



#### 链接

`<a href="path or url">`wordsToDisplay`</a>`



#### 元数据

`<meta>`

```html
<meta charset="UTF-8">
<meta name="author" content="zuorenhao">
<meta name="dsecription" content="words may be present at the results of Search Engine">
```

#### 图标

浏览器默认会寻找根目录下的`favicon.ico`

```html
<link rel="icon" href="/pathmy-ico-file.ico" type="img/x-icon">
```

#### 符号

| 显示结果 | 描述              | 实体名称          | 实体编号 |
| :------- | :---------------- | :---------------- | :------- |
|          | 空格              | &nbsp;            | &#160;   |
| <        | 小于号            | &lt;              | &#60;    |
| >        | 大于号            | &gt;              | &#62;    |
| &        | 和号              | &amp;             | &#38;    |
| "        | 引号              | &quot;            | &#34;    |
| '        | 撇号              | &apos; (IE不支持) | &#39;    |
| ￠       | 分（cent）        | &cent;            | &#162;   |
| £        | 镑（pound）       | &pound;           | &#163;   |
| ¥        | 元（yen）         | &yen;             | &#165;   |
| €        | 欧元（euro）      | &euro;            | &#8364;  |
| §        | 小节              | &sect;            | &#167;   |
| ©        | 版权（copyright） | &copy;            | &#169;   |
| ®        | 注册商标          | &reg;             | &#174;   |
| ™        | 商标              | &trade;           | &#8482;  |
| ×        | 乘号              | &times;           | &#215;   |
| ÷        | 除号              | &divide;          | &#247;   |

 [HTML 实体符号参考手册](https://www.w3school.com.cn/tags/html_ref_entities.html)

#### CSS

外部

```html
<link rel="stylesheet" href="my-css-file.css">
```

内部

```html
<style>
    p {
        #---
    }
</style>
```





#### scripts

```html
<script src="my-hs-file.js" defer>
</script>
```

HTML `<noscript>` 标签定义了替代内容，这些内容将显示给在浏览器中禁用了脚本或浏览器不支持脚本的用户

#### URL

URL - Uniform Resource Locator

统一资源定位器

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
        <img src="my-img-file .png">
     </a>
</p>
```

```url
# url
href="../../../path/to/my/file.png"
```

```html
# 文档（html)片段
# 先在index.html中为元素分配id
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
	presentation
</a>
```



#### 注释

```html
<!-- 注释内容  --> 
```

css注释：

```css
/*这是单行注释*/
/*
    这是多行注释
    这是多行注释
*/
```

##### 条件注释 IE

条件注释定义只有 Internet Explorer 执行的 HTML 标签。

```html
<!--[if IE 8]>
    .... some HTML here ....
<![endif]-->
```



#### 换行

`<br />`空行

`<br />`

再不产生新段落的情况下换行

```html
<p>This is<br />a para<br />graph with line breaks</p>
```

<p>This is<br />a para<br />graph with line breaks</p>

#### 空格符

块内连续的空格会被合并为一个

- ` nbsp`字符：不断行的空白格，该空格占据的宽度受字体影响。
- `ensp`字符：相当全角状态键入半个“空格”键（半个汉字的宽度）。
- `emsp`字符：相当全角状态键入“空格”键（1个汉字的宽度）。

#### 水平分割线

`<hr />`

效果如下：

<hr />

文件路径

| 路径                            | 描述                                         |
| :------------------------------ | :------------------------------------------- |
|`<img src="picture.jpg"> `       | picture.jpg 位于与当前网页相同的文件夹       |
| `<img src="images/picture.jpg"> ` | picture.jpg 位于当前文件夹的 images 文件夹中 |
| `<img src="/images/picture.jpg">` | picture.jpg 当前站点**根目录**的 images 文件夹中 |
| `<img src="../picture.jpg"> `     | picture.jpg 位于当前文件夹的上一级文件夹中   |


### 高阶文字排版

[高阶文字排版 - 学习 Web 开发 | MDN](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting)

这一部分MDN很规整，就，不需要整理了

包括：

- [描述列表](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#描述列表)
- [引用](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#引用)
- [缩略语](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#缩略语)
- [标记联系方式](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#标记联系方式)
- [上标和下标](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#上标和下标)
- [展示计算机代码](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#展示计算机代码)
- [标记时间和日期](https://developer.mozilla.org/zh-CN/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#标记时间和日期)

#### 计算机代码

```
<code>: 用于标记计算机通用代码。
<pre>: 用于保留空白字符（通常用于代码块）——如果您在文本中使用缩进或多余的空白，浏览器将忽略它，您将不会在呈现的页面上看到它。		  但是，如果您将文本包含在<pre></pre>标签中，那么空白将会以与你在文本编辑器中看到的相同的方式渲染出来。
<var>: 用于标记具体变量名。
<kbd>: 用于标记输入电脑的键盘（或其他类型）输入。
<samp>: 用于标记计算机程序的输出。
```



#### 文本格式化



```html
文本格式化标签
标签	描述
<b>	定义粗体文本。
<big>	定义大号字。
<em>	定义着重文字。
<i>	定义斜体字。
<small>	定义小号字。
<strong>	定义加重语气。
<sub>	定义下标字。
<sup>	定义上标字。
<ins>	定义插入字。
<del>	定义删除字。
“计算机输出”标签
标签	描述
<code>	定义计算机代码。
<kbd>	定义键盘码。
<samp>	定义计算机代码样本。
<tt>	定义打字机代码。
<var>	定义变量。
<pre>	定义预格式文本。
<listing>	不赞成使用。使用 <pre> 代替。
<plaintext>	不赞成使用。使用 <pre> 代替。
<xmp>	不赞成使用。使用 <pre> 代替。
引用、引用和术语定义
标签	描述
<abbr>	定义缩写。
<acronym>	定义首字母缩写。
<address>	定义地址。
<bdo>	定义文字方向。
<blockquote>	定义长的引用。
<q>	定义短的引用语。
<cite>	定义引用、引证、标题。
<dfn>	定义一个定义项目。
```



<h1 style="text-align:center">This is a heading</h1>

<b>This text is bold</b>

<br />

<strong>This text is strong</strong>

<br />

<big>This text is big</big>

<br />

<em>This text is emphasized</em>

<br />

<i>This text is italic</i>

<br />

<small>This text is small</small>

<br />

This text contains
<sub>subscript</sub>

<br />

This text contains
<sup>superscript

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

#### 导航栏

```html
<nav>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
  <li><a href="#"></a></li>
</nav>
```







### 多媒体嵌入

#### 图片

始终定义尺寸以防抖

```html
<img src="path/to/file/my-img.png"
     alt="描述文本"
     width="像素宽度"
     height="像素高度"
     title="图片标题 在鼠标悬停时显示" 
     >
```

```css
<-- css
p {
    background-image:
        url("url-to-img.png");
}
```

##### 切图

[前端必备技能——切图：进阶篇 - 知乎](https://zhuanlan.zhihu.com/p/22817637)

##### 自适应图片

```html
# 尺寸切换
<img srcset="elva-fairy-320w.jpg 320w,
             elva-fairy-480w.jpg 480w,
             elva-fairy-800w.jpg 800w"
     sizes="(max-width: 320px) 280px,
            (max-width: 480px) 440px,
            800px"
     src="elva-fairy-800w.jpg" alt="Elva dressed as a fairy">
# 分辨率切换
<img srcset="elva-fairy-320w.jpg,
             elva-fairy-480w.jpg 1.5x,
             elva-fairy-640w.jpg 2x"
     src="elva-fairy-640w.jpg" alt="Elva dressed as a fairy">

```



#### 视频	video

```html
<video controls width="300" height="400">
     <source src="name.mp4" type="video/mp4"> 
    autoplay loop muted   
    poster="预览图片.png"
    preload="none"/"auto"/"metadata"	# 缓冲：不/是/仅元数据
    您的浏览器不支持 HTML5 video 标签。
</video>
```

.webm

#### 音频	audio

除不支持`width` `height` 外与video相同

#### iframe

用于在网页内部显示网页



```html
<iframe src="demo_iframe.htm" width="200" height="200" frameborder="0"></iframe>
```
#### B站视频嵌入

```html
<iframe src="//player.bilibili.com/player.html?aid=256679698&bvid=BV1cY411F7XW&cid=724978311&page=1&high_quality=1&danmaku=0"
        allowfullscreen="allowfullscreen"
        width="100%" height="1080"
        scrolling="no" frameborder="0"
        sandbox="allow-top-navigation allow-same-origin allow-forms allow-scripts">
</iframe>
<!--B站嵌入代码	修改url和参数 
	&highquality=1 默认高画质
	&danmaku=0	关闭弹幕
	sandbox安全&阻止弹出页面
-->
```

##### 安全风险与处理

使用HTTPS:

- HTTP的加密版本
- 需要一个安全证书￥
- 减少远程内容在传输过程中被篡改的机会
- 防止嵌入式内容访问父文档中的内容

使用sandbox

#### canvas

javascipt绘制 通过`<script>`引入

#### `<embed>` 元素

所有主要浏览器均支持 `<embed>` 元素。

`<embed>` 元素也可定义了 HTML 文档中的嵌入式对象。



#### 矢量图形

SVG:描述矢量图形的XML语言

```html
<!-- svg描述 -
<svg version="1.1"
     baseProfile="full"
     width="300" height="200"
     xmlns="http://www.w3.org/2000/svg">
  <rect width="100%" height="100%" fill="black" />
  <circle cx="150" cy="100" r="90" fill="blue" />
</svg>
```

<svg version="1.1"
     baseProfile="full"
     width="300" height="200"
     xmlns="http://www.w3.org/2000/svg">
  <rect width="100%" height="100%" fill="black" />
  <circle cx="150" cy="100" r="90" fill="blue" />
</svg>



```html
# 链接.svg图
<img
    src="equilateral.svg"
    alt="triangle with all three sides equal"
    height="87px"
    width="100px" />

```

```html
# <svg>模块
<svg width="300" height="200">
    <rect width="100%" height="100%" fill="green" />
</svg>

```



#### 表格

**th表头粗体居中**

**tr行**

**td单元格**

```html
<table>
  <tr>
    <th>Animals</th>
  </tr>
  <tr>
    <th>Hippopotamus</th>
  </tr>
  <tr>
    <th>Horse</th>
    <td>Mare</td>
  </tr>
  <tr>
    <td>Stallion</td>
  </tr>
  <tr>
    <th>Crocodile</th>
  </tr>
  <tr>
    <th>Chicken</th>
    <td>Hen</td>
  </tr>
  <tr>
    <td>Rooster</td>
  </tr>
</table>
```



`<td>&nbsp;</td>`空单元格  不加空格符可能不显示边框

`align="left"` left right center 对齐

|   表格   | 描述                   |
| :------: | :--------------------- |
|  table   | 定义表格               |
| caption  | 定义表格标题。         |
|    th    | 定义表格的表头。       |
|    tr    | 定义表格的行。         |
|    td    | 定义表格单元。         |
|  thead   | 定义表格的页眉。       |
|  tbody   | 定义表格的主体。       |
|  tfoot   | 定义表格的页脚。       |
|   col    | 定义用于表格列的属性。 |
| colgroup | 定义表格列的组。       |

### 简单布局

| header  | 定义文档或节的页眉             |
| ------- | :----------------------------- |
| nav     | 定义导航链接的容器             |
| section | 定义文档中的节                 |
| article | 定义独立的自包含文章           |
| aside   | 定义内容之外的内容（比如侧栏） |
| footer  | 定义文档或节的页脚             |
| details | 定义额外的细节                 |
| summary | 定义 details 元素的标题        |

```html
<!DOCTYPE html>
<html>

<head>
<style>
#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:300px;
    width:100px;
    float:left;
    padding:5px;	      
}
#section {
    width:350px;
    float:left;
    padding:10px;	 	 
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>
</head>

<body>

<div id="header">
<h1>City Gallery</h1>
</div>

<div id="nav">
London<br>
Paris<br>
Tokyo<br>
</div>

<div id="section">
<h2>London</h2>
<p>
London is the capital city of England. It is the most populous city in the United Kingdom,
with a metropolitan area of over 13 million inhabitants.
</p>
<p>
Standing on the River Thames, London has been a major settlement for two millennia,
its history going back to its founding by the Romans, who named it Londinium.
</p>
</div>

<div id="footer">
Copyright ? W3Schools.com
</div>

</body>
</html>

```



### 表单

#### 下拉选择菜单

```html
<select name="cars">
    <option value="volvo">Volvo</option>
    <option value="saab">Saab</option>
    <option value="fiat">Fiat</option>
    <option value="audi">Audi</option>
</select>
```

#### 文本域

```html
<form action="/demo/html/action_page.php">
  <textarea name="message" rows="10" cols="30">The cat was playing in the garden.</textarea>
  <br><br>
  <input type="submit">
</form>

```

#### 按钮 Button

```html
<button type="button" onclick="alert('Hello World!')">Click Me!</button>

```

#### Datalist

*<datalist>* 元素为 <input> 元素规定**预定义**选项列表。

```html
<form action="action_page.php">
    <input list="browsers">
    <datalist id="browsers">
       <option value="Internet Explorer">
       <option value="Firefox">
       <option value="Chrome">
       <option value="Opera">
       <option value="Safari">
    </datalist> 
</form>
```



### 输入表单 form

#### text

```html
<form>
     First name:<br>
    <input type="text" name="firstname">
    <br>
     Last name:<br>
    <input type="text" name="lastname">
</form> 
```

#### password

掩码/显示

```html
<form>
     User name:<br>
    <input type="text" name="username">
    <br>
     User password:<br>
    <input type="password" name="psw">
</form> 
```



#### 提交

##### submit提交表单

`*<input type="submit">*` 定义*提交*表单数据至*表单处理程序*的按钮。

表单处理程序（form-handler）通常是包含处理输入数据的脚本的服务器页面。

在表单的 action 属性中规定表单处理程序（form-handler）：

```html
<form action="action_page.php">
    First name:<br>
    <input type="text" name="firstname" value="Mickey">
    <br>
    Last name:<br>
    <input type="text" name="lastname" value="Mouse">
    <br><br>
    <input type="submit" value="Submit">
</form> 
```

##### radio单选

```html
<form>
	<input type="radio" name="sex" value="male" checked>Male
	<br>
	<input type="radio" name="sex" value="male" checked="BoolLean">Male 
	<br>    
	<input type="radio" name="sex" value="female">Female
</form> 
```

##### checkbox复选

```html
<form>
	<input type="checkbox" name="vehicle" value="Bike">I have a bike
	<br>
	<input type="checkbox" name="vehicle" value="Car">I have a car 
</form> 
```



##### number

| 属性      | 描述                               |
| :-------- | :--------------------------------- |
| disabled  | 规定输入字段应该被禁用。           |
| max       | 规定输入字段的最大值。             |
| maxlength | 规定输入字段的最大字符数。         |
| min       | 规定输入字段的最小值。             |
| pattern   | 规定通过其检查输入值的正则表达式。 |
| readonly  | 规定输入字段为只读（无法修改）。   |
| required  | 规定输入字段是必需的（必需填写）。 |
| size      | 规定输入字段的宽度（以字符计）。   |
| step      | 规定输入字段的合法数字间隔。       |
| value     | 规定输入字段的默认值。             |

##### date+日历

```html
<form>
  Enter a date before 1980-01-01:
  <input type="date" name="bday" max="1979-12-31"><br>
  Enter a date after 2000-01-01:
  <input type="date" name="bday" min="2000-01-02"><br>
</form>
```

```html
<!-- only month -->
<form>
  Birthday (month and year):
  <input type="month" name="bdaymonth">
</form>
```

```html
<!-- only week -->
<form>
  Select a week:
  <input type="week" name="week_year">
</form>
```

```html
<!-- only time -->
<form action="/demo/demo_form.asp">
  请选取一个时间：
  <input type="time" name="usr_time">
  <input type="submit">
</form>
```





#### 其他

##### color+调色

```html
<form>
  Select your favorite color:
  <input type="color" name="favcolor">
</form>
```

##### range+滑动条

```html
<form>
  <input type="range" name="points" min="0" max="10">
</form>
```



##### email

```html
<form>
  E-mail:
  <input type="email" name="email">
</form>
```

##### search

```html
<form>
  Search Google:
  <input type="search" name="googlesearch">
</form>
```

##### url

```html
<form>
  Add your homepage:
  <input type="url" name="homepage">
</form>
```

#### Input属性

```html
value 			初始值
readonly 		只读
disabled 		禁用
size			尺寸	
maxlength		最大长度
autocomplete	自动完成
autofocus		在页面加载时自动获得输入焦点	
form			所属表单 空格分隔
formaction		处理该输入的文件URL
formenctype		如何编码（iamge,）
formmethod		HTTP方法（get post
formnovalidate	不验证表单数据
formtarget		在何处i西安市接收到的响应
height 和 width
list
min 和 max		最小最大
multiple		 接收多个？
<input type="file" name="img" multiple="multiple" />

pattern (regexp) 正则表达式
placeholder		 输入字段预期值
text、search、url、tel、email、password

required		 必填
step 			 数字间隔
```



### Cache

HTML5 引入了应用程序缓存（Application Cache），这意味着可对 web 应用进行缓存，并可在没有因特网连接时进行访问。

应用程序缓存为应用带来三个优势：

1. 离线浏览 - 用户可在应用离线时使用它们
2. 速度 - 已缓存资源加载得更快
3. 减少服务器负载 - 浏览器将只从服务器下载更新过或更改过的资源

```html
<html manifest="demo.appcache">
```

manifest 文件有三个部分：

- CACHE MANIFEST - 在此标题下列出的文件将在首次下载后进行缓存
- NETWORK - 在此标题下列出的文件需要与服务器的连接，且不会被缓存
- FALLBACK - 在此标题下列出的文件规定当页面无法访问时的回退页面（比如 404 页面）





### 调试

让你的HTML页面通过 [Markup Validation Service](https://validator.w3.org/)。由 W3C（制定 HTML、CSS 和其他网络技术标准的组织） 创立并维护的标记验证服务。把一个 HTML 文档加载至本网页并运行 ，网页会返回一个错误报告。




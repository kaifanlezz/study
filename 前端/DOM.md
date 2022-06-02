# DOM

Document Object Model

![DOM HTML 树](mdAssets/DOM.asset/ct_htmltree.gif)

## 方法

渐进增强，平稳退化！

### 获取元素

```js
getElementById("demo").innerHTML = "hello";
getElementByTagName("p").innerHTML = "hello";
getElementByClassName("intro").innerHTML = "hello";
var x = document.querySelectorAll("p.intro");
```

### 改变元素

| 改变元素                                   | 描述                   |
| :----------------------------------------- | :--------------------- |
| element.innerHTML = *new html content*     | 改变元素的 inner HTML  |
| element.attribute = *new value*            | 改变 HTML 元素的属性值 |
| element.setAttribute(*attribute*, *value*) | 改变 HTML 元素的属性值 |
| element.style.property = *new style*       | 改变 HTML 元素的样式   |

### 添加/删除

| 添加/删除                                             | 描述                                          |
| :---------------------------------------------------- | :-------------------------------------------- |
| document.createElement(*element*)                     | 创建 HTML 元素(仅创建，不自动添加到节点树)    |
| document.removeChild(*element*)                       | 删除 HTML 元素                                |
| parent.appendChild(*element*)                         | 添加 HTML 元素到parent的子元素                |
| document.replaceChild(*element*)                      | 替换 HTML 元素                                |
| document.write(*text*)                                | 写入 HTML 输出流（需要嵌入`<body>` 很少使用） |
| document.insertBrfore( *newElement , targetElement* ) | 把new插入到target之前                         |

### 事件处理程序

| 事件处理程序                                             | 描述                                        |
| :------------------------------------------------------- | :------------------------------------------ |
| document.getElementById(id).onclick = function(){*code*} | 向点击事件（包括enter确认）添加事件处理程序 |
| .onmouseover                                             | 鼠标移动                                    |
| .onmouseout                                              |                                             |
| .onkeypress                                              | 按下键盘上任何一个键都会触发事件            |
| window.onload = someFunction()                           | BOM方法 页面加载时运行函数                  |





### 查找属性

| 查找                         | 描述                                                         | DOM  |
| :--------------------------- | :----------------------------------------------------------- | :--- |
| document.anchors             | @media screen and (min-width: 480px) {  #leftsidebar {width: 200px; float: left;}  #main {margin-left: 216px;}}css | 1    |
| document.applets             | 返回所有 <applet> 元素（HTML5 不建议使用）                   | 1    |
| document.baseURI             | 返回文档的绝对基准 URI                                       | 3    |
| document.body                | 返回 <body> 元素                                             | 1    |
| document.cookie              | 返回文档的 cookie                                            | 1    |
| document.doctype             | 返回文档的 doctype                                           | 3    |
| document.documentElement     | 返回 <html> 元素                                             | 3    |
| document.documentMode        | 返回浏览器使用的模式                                         | 3    |
| document.documentURI         | 返回文档的 URI                                               | 3    |
| document.domain              | 返回文档服务器的域名                                         | 1    |
| document.domConfig           | 废弃。返回 DOM 配置                                          | 3    |
| document.embeds              | 返回所有 <embed> 元素                                        | 3    |
| document.forms               | 返回所有 <form> 元素                                         | 1    |
| document.head                | 返回 <head> 元素                                             | 3    |
| document.images              | 返回所有 <img> 元素                                          | 1    |
| document.implementation      | 返回 DOM 实现                                                | 3    |
| document.inputEncoding       | 返回文档的编码（字符集）                                     | 3    |
| document.lastModified        | 返回文档更新的日期和时间                                     | 3    |
| document.links               | 返回拥有 href 属性的所有 <area> 和 <a> 元素                  | 1    |
| document.readyState          | 返回文档的（加载）状态                                       | 3    |
| document.referrer            | 返回引用的 URI（链接文档）                                   | 1    |
| document.scripts             | 返回所有 <script> 元素                                       | 3    |
| document.strictErrorChecking | 返回是否强制执行错误检查                                     | 3    |
| document.title               | 返回 <title> 元素                                            | 1    |
| document.URL                 | 返回文档的完整 URL                                           | 1    |
| element.nextSibling          | 元素的下一个元素                                             |      |

### 可访问的对象

以下 HTML 对象（和对象集合）也是可访问的：

- [document.anchors](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)
- [document.body](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)
- [document.documentElement](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)
- [document.embeds](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)
- [document.forms](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)
- [document.head](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)
- [document.images](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)
- [document.links](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)
- [document.scripts](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)
- [document.title](https://www.w3school.com.cn/tiy/t.asp?f=eg_js_doc_anchors)



## 元素属性

### nodeType

someNode.nodeType

- 元素节点：1
- 属性节点：2

- 文本节点：3
- 等，共12种取值

### nodeValue

文本节点的值



firstChild

lastChild





## onload==>addLoadEvent

```js
function addLoadEvent(func){
    let oldonload = window.onload
    if (typeof oldonload != 'function') {
        window.onload = func
    } else {
        window.onload = function() {
            oldonload();
            func();
        }
    }
    
}
```



## 改变元素样式

通过给元素添加类标签，和对类标签style设置

```js
  function addClass(element,value) {
    if (!element.className) {
      element.className = value;
    } else {
      // let old = element.className
      // old += " ";
      // old += value;
      // element.className = old;
      element.className += " "+value;
    }
  }
   
let a = getElementById("id")      
addClass(a,targetClass)
      
//<style>
    .targetClass {
        //you wanna
    }
</style>
```


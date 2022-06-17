# Javascript

[TOC]



### 标识符

- 第一个字符，可以是任意 Unicode 字母（包括英文字母和其他语言的字母），以及美元符号（`$`）和下划线（`_`）。
- 第二个字符及后面的字符，除了 Unicode 字母、美元符号和下划线，还可以用数字`0-9`。
- 保留字，不能用作标识符：`arguments、break、case、catch、class、const、continue、debugger、default、delete、do、else、enum、eval、export、extends、false、finally、for、function、if、implements、import、in、instanceof、interface、let、new、null、package、private、protected、public、return、static、super、switch、this、throw、true、try、typeof、var、void、while、with、yield。`

```js
//单行注释
/*
多行
注释
*/

x = 1; <!-- x = 2;
--> x = 3;
-->只有在行首，才会被当成单行注释
```

### 变量声明

`var` 声明变量
1. 函数级作用域
2. 声明提升--到作用域顶部
3. 在全局中声明的变量会成为`window`对象的`Attribute`
`let` 声明变量
1. 块级作用域--通常是{}
2. 声明不提升
`const` 声明变量
1. 声明时必须初始化变量
2. 不能自增--无法迭代

### 数据类型
ES6 简单数据类型：	原始值

|类型		|						|
|--			|--						|
|`Undefined`|声明了但未初始化的变量	|
|`Null`		|空对象指针				|
|`Boolean`	|`true``false`小写！		|
|`Number`	|						|
|`String`	|						|
|`Symbol`	|符号(ES6)				|


复杂数据类型:	引用值
`Object`
> typeof(null)=='object'	被认作对空对象的引用

### Number
- N/A 不存在
- NAN Not a number
- Infinity 无穷

`isNaN(s`omeThing)`	是否不是数值
`num.tofixed(2)`四舍五入到（指定小数位数）
`num.toExponential(1)`科学计数法（结果中小数位数）
#### 转换
`Number()`
`parseInt()`
`parseFloat()`
### symbol
ES6 没有字面量，用作属性名
Symbol()没有重复的值,但Symbol.for()传入相同字符串时都会得到相同的值。
`s = Symbol([para])`
如果带参数，`s.toString()`会展示参数
### 字符串
`''`	`""`	
一个字符有16个码元 2Bit
UTF-16	UCS-2
``模板字面量，反引号，可换行，应用于
 > `<template>`

#### 方法
`str.toUpperCase()`
`str.toLowerCase()`
`.trim`清除前后空格
`.repeat(次)`
#### 转义字符

- `\0` ：null（`\u0000`）
- `\b` ：后退键（`\u0008`）
- `\f` ：换页符（`\u000C`）
- `\n` ：换行符（`\u000A`）
- `\r` ：回车键（`\u000D`）
- `\t` ：制表符（`\u0009`）
- `\v` ：垂直制表符（`\u000B`）
- `\'` ：单引号（`\u0027`）
- `\"` ：双引号（`\u0022`）
- `\\` ：反斜杠（`\u005C`）

- \0onn  :八进制
- \xnn   : 十六nn
- \unnnn : 十六进制nnnn



```js
var f\u006F\u006F = 'abc';
foo // "abc"
```

#### 插值
- `+`
- ``{value}and{value2}``

#### Base64转码

JavaScript 原生提供两个 Base64 相关的方法。ASCLL不可打印的字符->可打印字符0～9、A～Z、a-z、`+`和`/`

- `btoa()`：任意值转为 Base64 编码
- `atob()`：Base64 编码转为原来的值



##### 非ASCLL字符

```js
function b64Encode(str) {
  return btoa(encodeURIComponent(str));
}

function b64Decode(str) {
  return decodeURIComponent(atob(str));
}

b64Encode('你好') // "JUU0JUJEJUEwJUU1JUE1JUJE"
b64Decode('JUU0JUJEJUEwJUU1JUE1JUJE') // "你好"
```





### Object

简单说，对象就是一组“键值对”（key-value）的集合，是一种无序的复合数据集合。

如果键名不符合标识名的条件（比如第一个字符为数字，或者含有空格或运算符），且也不是数字，则必须加上引号，否则会报错。

```js
var obj = {
  '1p': 'Hello World',
  'h w': 'Hello World',
  'p+q': 'Hello World'
};
```

#### 引用

如果不同的变量名指向同一个对象，那么它们都是这个对象的**引用**，也就是说指向同一个内存地址。修改其中一个变量，会影响到其他所有变量。

只局限于对象，如果两个变量指向同一个原始类型的值。那么，变量这时都是值的拷贝。

#### 创建对象
```js
// 1. 字面量
let empty = {};
// 2. new
let a = new Object();
let b = new Array();
let c = new Date(); //当前时间的日期对象
let d = new Map();	//键值对映射
// 3. Object.create()
Object.create(Object.prototype)	//第一个参数作为新对象的原型

```

#### 原型 prototyoe
通过构造函数创建的“实例”继承这个给原型对象的属性
#### 读取对象的属性

有两种方法，一种是使用点运算符`Object.Attr`，还有一种是使用方括号运算符`Object[Attri]`。

```js
var obj = {
  p: 'Hello World'
};

obj.p // "Hello World"
obj['p'] // "Hello World"
```

数值键名不能使用点运算符（因为会被当成小数点），只能使用方括号运算符。

JavaScript 允许属性的“后绑定”，不存在的属性`Undefined`
##### 条件式属性访问
`expression?.identifier`如果属性不存在，不会报错

#### 查看对象的所有属性	key

```js
Object.keys(obj);
```

`Object.getOwnPropertyNames`方法与`Object.keys`类似，也是接受一个对象作为参数，返回一个数组，包含了该对象自身的所有属性名。
但还返回**不可枚举的属性名**。



#### 删除属性	delete

`Obj.delete()`命令用于删除对象的属性，删除成功后返回`true`。

- 删除一个**不存在**的属性，`delete`不报错，而且返回`true`。
- 无法删除`configurable:false的`属性
- 无法删除**继承**的属性，继承的只能在原型对象上删除。

#### 对象的一些方法
**（1）对象属性模型的相关方法**

- `Object.getOwnPropertyDescriptor()`：获取某个属性的描述对象。
- `Object.defineProperty()`：通过描述对象，定义某个属性。
- `Object.defineProperties()`：通过描述对象，定义多个属性。

**（2）控制对象状态的方法**

- `Object.preventExtensions()`：防止对象扩展。
- `Object.isExtensible()`：判断对象是否可扩展。
- `Object.seal()`：禁止对象配置。
- `Object.isSealed()`：判断一个对象是否可配置。
- `Object.freeze()`：冻结一个对象。
- `Object.isFrozen()`：判断一个对象是否被冻结。

**（3）原型链相关方法**

- `Object.create()`：该方法可以指定原型对象和属性，返回一个新的对象。
- `Object.getPrototypeOf()`：获取对象的`Prototype`对象。

#### Object 的实例方法
- `JSON.stringfy(boj)`:返回**JSON**形式键值对
- `Object.prototype.valueOf()`：返回当前对象对应的值。
- `Object.prototype.toString()`：返回当前对象对应的**字符串**形式。
- `Object.prototype.toLocaleString()`：返回当前对象对应的本地字符串形式。
- `Object.prototype.hasOwnProperty()`：判断某个属性是否为当前对象自身的属性，还是继承自原型对象的属性。
- `Object.prototype.isPrototypeOf()`：判断当前对象是否为另一个对象的原型。
- `Object.prototype.propertyIsEnumerable()`：判断某个属性是否可枚举。


函数对象都有一个子对象 prototype对象，类是以函数的形式来定义的。prototype表示该函数的**原型**，也表示一个类的成员的集合。
#### 属性存在	in

`in`
`o.x != undefined`
`o.hasOwnProperty('x')`
`o.propertyIsEnumerable`	//判断 可迭代属性

#### 枚举顺序
1. 名字为非负整数的字符串	按数值从小到大
2. 字符串名字，负数和浮点数	按添加到对象的先后顺序
3. 符号对象	先后顺序

#### 复制属性
`Object.assign(o1,o2)`
ES6 修改并返回第一个参数，后续参数为属性来源对象，将他们的可枚举自有属性复制到目标对象。 //可覆盖

`o = {...default,...o}`
ES2018 拓展操作符

### 流控制语句

#### 遍历	for

- 会跳过不可遍历的属性。
- 它不仅遍历对象自身的属性，还遍历继承的属性。

```js
for (var i in obj) {
  console.log('键名：', i);
  console.log('键值：', obj[i]);
}
```


#### with	不推荐使用

操作同一个对象的多个属性时，提供一些书写的方便

```js
with (obj) {
  p1 = 4;
  p2 = 5;
}
```

#### if
```js
if (condition) statement1 else statement2
```
#### switch
```js
switch (expression) {
	case value1:
		statement
		break;
	case value2:
	...
}
```
为了避免不必要的判断，每一条最后都要加`break`除非需要多重判断
#### label:
可以被`break``continue``goto`引用
```js
{
	start:for ... {
		...
		break start;
	}
}
```

### 函数

#### 声明

1. 传统	function

```js
function print(s) {
  console.log(s);
}
```

2. 函数表达式

#### 匿名函数

```js
const myFunc = function() {
  console.log(s);
};
```

加入了函数名`x`。这个`x`只在函数体内部可用，指代函数表达式本身，其他地方都不可用。这种写法的用处有两个，一是可以在函数体内部调用自身，二是方便除错（除错工具显示函数调用栈时，将显示函数名，而不再显示这里是一个匿名函数）。

```js
var print = function x(){
  console.log(typeof x);
};
```

3. 构造函数

可以传递任意数量的参数给`Function`构造函数，只有**最后一个参数**会被当做**函数体**，如果只有一个参数，该参数就是函数体。

```js
const add = new Function(
  'x',
  'y',
  'return x + y'  //body
);

// 等同于
function add(x, y) {
  return x + y;
}
```

- 如果同一个函数被多次声明，后面的声明就会**覆盖**前面的声明。
- 如果采用赋值语句定义函数，函数定义不会被提升，必须在定义代码之后才能调用。



#### 属性&方法

##### name

```js
function f1() {}
f1.name				// "f1"
```

##### length

函数的`length`属性返回函数预期传入的参数个数，即函数定义之中的参数个数。

##### `toString()`

方法返回一个字符串，内容是函数的源码，包括注释。



#### 作用域

如果函数`A`调用函数`B`，却没考虑到函数`B`不会引用函数`A`的内部变量。

函数体内部声明的函数，作用域绑定函数体内部。

#### 参数

- 可以省略

* 如果一定要省略靠**前**的参数，只有显式传入`undefined`。
- 剩余操作符 (rest operator) 
```js
function myFunc(para1,...expressions){
	- 
}
```
- 参数如果是原始类型的值（数值、字符串、布尔值）
* 传递方式是**传值传递**（passes by value）。在函数体内修改参数值，不会影响到函数外部。
- 参数是复合类型的值（数组、对象、其他函数）
* 传递方式是**传址传递**（pass by reference）。传入函数的原始值的地址，因此在函数内部修改参数，将**会**影响到原始值。
- ES6所有参数都是复制（传值）
##### arguments[]

在函数体**内部**读取所有参数

很像数组的对象，没有`slice` `forEach`方法

正常模式下，`arguments`对象可以在运行时修改。

严格模式下，`arguments`对象与函数参数不具有联动关系。也就是说，修改`arguments`对象不会影响到实际的函数参数。

```js
var f = function(a, b) {
  'use strict'; // 开启严格模式
  arguments[0] = 3;
  arguments[1] = 2;
  return arguments.length; // 判断函数有几个参数
}

f(1, 1) // 2
```

`arguments`对象带有一个`callee`属性，返回它所对应的原函数。



#### 闭包

需要得到**函数内**的局部变量。正常情况下，这是办不到的，只有通过变通方法才能实现。那就是在函数的**内部**，**再定义一个函数**。

闭包的最大用处有两个

1. 可以读取外层**函数内**部的变量。

2. 让这些变量始终保持在内存中，即闭包可以使得它诞生环境一直存在。

#### IIFE

Immediately-Invoked Function Expression
立即调用的函数表达式

根据 JavaScript 的语法，圆括号()跟在函数名之后，表示调用该函数。比如，print()就表示调用print函数。

```js
(function(){ /* code */ }());
```

一是不必为函数命名，避免了污染全局变量；
二是 IIFE 内部形成了一个单独的作用域，可以封装一些外部无法读取的私有变量。



#### eval

`eval`命令接受一个字符串作为参数，并将这个字符串**当作语句**执行。

如果参数字符串无法当作语句运行，那么就会报错。

```js
eval('var a = 1;');
```

`eval`没有自己的作用域，都在当前作用域内执行，因此可能会修改当前作用域的变量的值，造成安全问题。

如果使用严格模式，`eval`内部声明的变量，不会影响到外部作用域。

```js
(function f() {
  'use strict';
  eval('var foo = 123');
  console.log(foo);  // ReferenceError: foo is not defined
})()
```

即使在严格模式下，`eval`依然可以读写当前作用域的变量

不利于引擎优化执行速度

凡是使用别名执行`eval`，`eval`内部一律是全局作用域。

#### call

`call() 方法使用一个指定的 this` 值和单独给出的一个或多个参数来调用一个函数。

### 数组

```js
// 字面量
let arr = ['a', 'b', 'c'];
// 拓展操作符
let a = [0,...b,1]

```
#### length
只要是数组，就一定有`length`属性。该属性是一个动态的值，等于键名(索引)中的最大整数加上`1`。

`length`属性是可写的。如果人为设置一个小于当前成员个数的值，该数组的成员数量会自动减少到`length`设置的值。

人为设置`length`大于当前元素个数，则数组的成员数量会增加到这个值，新增的位置都是空位(hole)。

使用`delete`命令删除一个数组成员，会形成空位`undefined`，并且不会影响`length`属性。

#### 遍历


#### for循环
```js
for(var i = 0; i < a.length; i++) {
  console.log(a[i]);
}
```
#### while循环
```js
var i = 0;
while (i < a.length) {
  console.log(a[i]);
  i++;
}
```

空位都会被跳过

如果某个位置是`undefined`，遍历的时候就不会被跳过。


#### forEach

对数组的每个元素执行一次给定的函数。

```js
//简单示例
const array1 = ['a', 'b', 'c'];
//箭头函数-只关心值
array1.forEach(element => console.log(element));
//完全体
array1.forEach(function(v,i,a){a[i]=v+1;})
// 数组元素的值-索引-数组本身

//
function logArgs() {
  Array.prototype.forEach.call(arguments, function (elem, i) {
    console.log(i + '. ' + elem);
  });
}

// 等同于 for 循环
function logArgs() {
  for (var i = 0; i < arguments.length; i++) {
    console.log(i + '. ' + arguments[i]);
  }
}
```
#### map
把调用它的数组的每个元素分别传给指定函数，返回这个函数**返回值 构成的数组**

#### 增删
##### 尾
`a.push()`
`a.pop()`
##### 头
`a.shift()`
`a.unshift()`
#### 方法
##### 切片
###### slice

数组的`slice`方法可以将“类似数组的对象”变成真正的数组。
不修改原数组
```js
var arr = Array.prototype.slice.call(arrayLike);
//转化 better
```
```js
a.slice(p1,p2)	//起始位置-终点（不包含）
```
###### splice
修改原数组
```js
a.splice(p1,p2,...p)	//起始位置-长度-在起点位置要插入的元素
```
###### copyWithin()
```js
a.copyWithin(p1,p2,p3)	//起始位置-要复制的起点索引-要复制的终点索引
```
##### sort
`a.sort()`默认按**字母**顺序从前到后，可以传参数函数
```js
a.sort()

arr.sort([compareFunction])
//将值发送给比较函数，根据返回的（负、零、正）值对值进行排序。
//负：第一个参数排在第二个前面
//正：第一个参数排在第二个后面
//零：顺序不重要
```
##### reverse
##### 断言 every	some
返回true or false
```js
a.every(x => x<10)	//任意

a.some(x => x<10)	//存在
```
##### 归并	 注入 折叠 reduce	reduceRight
```js
a.reduce((x,y) => x+y,0)	//第二个参数市初始值，缺省则初始为第一个
```

##### 打平嵌套
`a.flat(num)`打平数组嵌套	缺省num参数为一级打平
`a.flatMap()` = `a.map(f).flat()`	自动打平，效率更高
##### 组合 contact
`a.contact(1,5,[5,6],...)`返回组合的数组，每个元素都会被一级打平
## 运算符

#### 算术运算符

- 加法运算符：`x + y`
- 减法运算符： `x - y`
- 乘法运算符： `x * y`
- 除法运算符：`x / y`
- 指数运算符：`x ** y`
- 余数运算符：`x % y`
- 自增运算符：`++x` 或者 `x++`
- 自减运算符：`--x` 或者 `x--`
- 数值运算符： `+x`
- 负数值运算符：`-x`



#### 比较运算符

- `>` 大于运算符
- `<` 小于运算符
- `<=` 小于或等于运算符
- `>=` 大于或等于运算符
- `==` 相等运算符
- `===` 严格相等运算符
- `!=` 不相等运算符
- `!==` 严格不相等运算符

如果运算子是对象，会转为原始类型的值，再进行比较。

对象转换成原始类型的值，算法是先调用`valueOf`方法；如果返回的还是对象，再接着调用`toString`方法
#### `==`&`===`
- 相等运算符（`==`）比较两个值是否相等，严格相等运算符（`===`）比较它们是否为“同一个值”。如果两个值不是同一**类型**，严格相等运算符（`===`）直接返回`false`，而相等运算符（`==`）会将它们转换成同一个类型，再用严格相等运算符进行比较。

- 两个复合类型（对象、数组、函数）的数据比较时，不是比较它们的值是否相等，而是比较它们是否**指向同一个地址**。



#### 布尔运算符

- 取反运算符：`!`
- 且运算符：`&&`
- 或运算符：`||`
- 三元运算符：`?:`

如果第一个表达式的布尔值为`true`，则返回第二个表达式的值，否则返回第三个表达式的值。

```js
't' ? 'hello' : 'world' // "hello"
0 ? 'hello' : 'world' // "world"
```



#### 二进制位运算符

- 二进制或运算符（or）：符号为`|`，表示若两个二进制位都为`0`，则结果为`0`，否则为`1`。
- 二进制与运算符（and）：符号为`&`，表示若两个二进制位都为1，则结果为1，否则为0。
- 二进制否运算符（not）：符号为`~`，表示对一个二进制位取反。
- 异或运算符（xor）：符号为`^`，表示若两个二进制位不相同，则结果为1，否则为0。
- 左移运算符（left shift）：符号为`<<`，详见下文解释。
- 右移运算符（right shift）：符号为`>>`，详见下文解释。
- 头部补零的右移运算符（zero filled right shift）：符号为`>>>`，二进制形式向右移动时，头部一律补零，而不考虑符号位。->算术右移

#### 开关作用

```js
var FLAG_A = 1; // 0001
var FLAG_B = 2; // 0010
var FLAG_C = 4; // 0100
var FLAG_D = 8; // 1000

var flags = 5; // 二进制的0101

if (flags & FLAG_C) {
  // ...
}
// 0101 & 0100 => 0100 => true
```



#### void

`void`运算符的作用是执行一个表达式，然后不返回任何值，或者说返回`undefined`。

主要用途是浏览器的书签工具（Bookmarklet），以及在超级链接中插入代码防止网页跳转。

#### ,

逗号运算符用于对两个表达式求值，并返回后一个表达式的值。

一个用途是，在返回一个值之前，进行一些辅助操作。先执行逗号之前的操作，然后返回逗号后面的值。



### 强制类型转换

##### `number()`

```js
// 数值：转换后还是原来的值
Number(324) // 324

// 字符串：如果可以被解析为数值，则转换为相应的数值
Number('324') // 324

// 字符串：如果不可以被解析为数值，返回 NaN
Number('324abc') // NaN

// 空字符串转为0
Number('') // 0

// 布尔值：true 转成 1，false 转成 0
Number(true) // 1
Number(false) // 0

// undefined：转成 NaN
Number(undefined) // NaN

// null：转成0
Number(null) // 0
```

```js
Number({a: 1}) // NaN
Number([1, 2, 3]) // NaN
Number([5]) // 5
//Number方法的参数是对象时，将返回NaN，除非是包含单个数值的数组。
```

##### `Boolean()`

可以将任意类型的值转为布尔值。

它的转换规则相对简单：除了以下五个值的转换结果为`false`，其他的值全部为`true`。

- `undefined`
- `null`
- `0`（包含`-0`和`+0`）
- `NaN`
- `''`（空字符串）



##### 自动转换

第一种情况，不同类型的数据互相运算。

```js
123 + 'abc' // "123abc"
```

第二种情况，对非布尔值类型的数据求布尔值。

```js
if ('abc') {
  console.log('hello')
}  // "hello"
```

第三种情况，对非数值类型的值使用一元运算符（即`+`和`-`）。

```js
+ {foo: 'bar'} // NaN
- [1, 2, 3] // NaN
```



### 错误处理

- **message**：错误提示信息
- **name**：错误名称（非标准属性）
- **stack**：错误的堆栈（非标准属性）

#### 原生错误类型

`Error`实例对象是最一般的错误类型，在它的基础上，JavaScript 还定义了其他6种错误对象。也就是说，存在`Error`的6个派生对象。

##### SyntaxError 对象

`SyntaxError`对象是解析代码时发生的语法错误。

```js
// 变量名错误
var 1a;
// Uncaught SyntaxError: Invalid or unexpected token

// 缺少括号
console.log 'hello');
// Uncaught SyntaxError: Unexpected string
```

上面代码的错误，都是在语法解析阶段就可以发现，所以会抛出`SyntaxError`。第一个错误提示是“token 非法”，第二个错误提示是“字符串不符合要求”。

##### ReferenceError 对象

`ReferenceError`对象是引用一个不存在的变量时发生的错误。

```js
// 使用一个不存在的变量
unknownVariable
// Uncaught ReferenceError: unknownVariable is not defined
```

另一种触发场景是，将一个值分配给无法分配的对象，比如对函数的运行结果赋值。

```js
// 等号左侧不是变量
console.log() = 1
// Uncaught ReferenceError: Invalid left-hand side in assignment
```

上面代码对函数`console.log`的运行结果赋值，结果引发了`ReferenceError`错误。

##### RangeError 对象

`RangeError`对象是一个值超出有效范围时发生的错误。主要有几种情况，一是数组长度为负数，二是`Number`对象的方法参数超出范围，以及函数堆栈超过最大值。

```js
// 数组长度不得为负数
new Array(-1)
// Uncaught RangeError: Invalid array length
```

##### TypeError 对象

`TypeError`对象是变量或参数不是预期类型时发生的错误。比如，对字符串、布尔值、数值等原始类型的值使用`new`命令，就会抛出这种错误，因为`new`命令的参数应该是一个构造函数。

```js
new 123
// Uncaught TypeError: 123 is not a constructor

var obj = {};
obj.unknownMethod()
// Uncaught TypeError: obj.unknownMethod is not a function
```

上面代码的第二种情况，调用对象不存在的方法，也会抛出`TypeError`错误，因为`obj.unknownMethod`的值是`undefined`，而不是一个函数。

##### URIError 对象

`URIError`对象是 URI 相关函数的参数不正确时抛出的错误，主要涉及`encodeURI()`、`decodeURI()`、`encodeURIComponent()`、`decodeURIComponent()`、`escape()`和`unescape()`这六个函数。

```js
decodeURI('%2')
// URIError: URI malformed
```

##### EvalError 对象

`eval`函数没有被正确执行时，会抛出`EvalError`错误。该错误类型已经不再使用了，只是为了保证与以前代码兼容，才继续保留。

##### 自定义错误

除了 JavaScript 原生提供的七种错误对象，还可以定义自己的错误对象。

```
function UserError(message) {
  this.message = message || '默认信息';
  this.name = 'UserError';
}

UserError.prototype = new Error();
UserError.prototype.constructor = UserError;
```

上面代码自定义一个错误对象`UserError`，让它继承`Error`对象。然后，就可以生成这种自定义类型的错误了。

```js
new UserError('这是自定义的错误！');
```

#### throw 语句

`throw`语句的作用是手动中断程序执行，抛出一个错误。

```
var x = -1;

if (x <= 0) {
  throw new Error('x 必须为正数');
}
// Uncaught Error: x 必须为正数
```

上面代码中，如果变量`x`小于等于`0`，就手动抛出一个错误，告诉用户`x`的值不正确，整个程序就会在这里中断执行。可以看到，`throw`抛出的错误就是它的参数，这里是一个`Error`对象的实例。

`throw`也可以抛出自定义错误。

```
function UserError(message) {
  this.message = message || '默认信息';
  this.name = 'UserError';
}

throw new UserError('出错了！');
// Uncaught UserError {message: "出错了！", name: "UserError"}
```

上面代码中，`throw`抛出的是一个`UserError`实例。

实际上，`throw`可以抛出任何类型的值。也就是说，它的参数可以是任何值。

```
// 抛出一个字符串
throw 'Error！';
// Uncaught Error！

// 抛出一个数值
throw 42;
// Uncaught 42

// 抛出一个布尔值
throw true;
// Uncaught true

// 抛出一个对象
throw {
  toString: function () {
    return 'Error!';
  }
};
// Uncaught {toString: ƒ}
```

对于 JavaScript 引擎来说，遇到`throw`语句，程序就中止了。引擎会接收到`throw`抛出的信息，可能是一个错误实例，也可能是其他类型的值。

#### try...catch 结构

一旦发生错误，程序就中止执行了。JavaScript 提供了`try...catch`结构，允许对错误进行处理，选择是否往下执行。

```js
try {
  throw new Error('出错了!');
} catch (e) {
  console.log(e.name + ": " + e.message);
  console.log(e.stack);
}
// Error: 出错了!
//   at <anonymous>:3:9
//   ...
```

`catch`代码块捕获错误之后，程序不会中断，会按照正常流程继续执行下去。

```js
openFile();

try {
  writeFile(Data);
} catch(e) {
  handleError(e);
} finally {
  closeFile();
}
```



### Console	控制台

```js
console.log(' %s + %s = %s', 1, 1, 2)
```

- `%s` 字符串
- `%d` 整数
- `%i` 整数
- `%f` 浮点数
- `%o` 对象的链接
- `%c` CSS 格式字符串

```js
console.log(
  '%cThis text is styled!',
  'color: red; background: yellow; font-size: 24px;'
)
```

- `console.info`是`console.log`方法的别名，用法完全一样。只不过`console.info`方法会在输出信息的前面，加上一个蓝色图标。

- `console.debug`方法与`console.log`方法类似，会在控制台输出调试信息。但是，默认情况下，`console.debug`输出的信息不会显示，只有在打开显示级别在`verbose`(日志显示)的情况下，才会显示。

- `warn`方法输出信息时，在最前面加一个黄色三角，表示警告

- `error`方法输出信息时，在最前面加一个红色的叉，表示出错。同时，还会高亮显示输出文字和错误发生的堆栈。

```js
console.error('Error: %s (%i)', 'Server is not responding', 500)
```

```js
console.warn('Warning! Too few nodes (%d)', document.childNodes.length)
```

- 对于某些复合类型的数据，`console.table`方法可以将其转为表格显示。

- `count`方法用于计数，输出它被调用了多少次数。可以接受一个字符串作为参数，作为标签，对执行**次数**进行分类。
- `dir`方法用来对一个对象进行检查（inspect），并以易于阅读和打印的格式显示。

```js
console.dir({f1: 'foo', f2: 'bar'})
// Object
//   f1: "foo"
//   f2: "bar"
//   __proto__: Object
```

- `dirxml`方法主要用于以**目录树**的形式，显示 DOM 节点。
- `console.assert`方法主要用于程序运行过程中，进行条件判断，如果不满足条件，就显示一个错误，但不会中断程序执行。这样就相当于提示用户，内部状态不正确。

```js
console.assert(false, '判断条件不成立')
// Assertion failed: 判断条件不成立

// 相当于
try {
  if (!false) {
    throw new Error('判断条件不成立');
  }
} catch(e) {
  console.error(e);
}
```

- `console.time()，console.timeEnd()`

```
console.time('Array initialize');

var array= new Array(1000000);
for (var i = array.length - 1; i >= 0; i--) {
  array[i] = new Object();
};

console.timeEnd('Array initialize');
// Array initialize: 1914.481ms
```



- `console.group`和`console.groupEnd`这两个方法用于将显示的信息分组。它只在输出大量信息时有用，分在一组的信息，可以用鼠标折叠/展开。
- `console.trace`方法显示当前执行的代码在堆栈中的调用路径。
- `console.clear`方法用于清除当前控制台的所有输出，将光标回置到第一行。如果用户选中了控制台的“Preserve log”选项，`console.clear`方法将不起作用。



#### API	$

（1）`$_`

`$_`属性返回上一个表达式的值。

（2）`$0` - `$4`

控制台保存了最近5个在 Elements 面板选中的 DOM 元素，`$0`代表倒数第一个（最近一个），`$1`代表倒数第二个，以此类推直到`$4`。

（3）`$(selector)`

`$(selector)`返回**第一个匹配**的元素，等同于`document.querySelector()`。注意，如果页面脚本对`$`有定义，则会覆盖原始的定义。比如，页面里面有 jQuery，控制台执行`$(selector)`就会采用 jQuery 的实现，返回一个数组。

（4）`$$(selector)`

`$$(selector)`返回选中的 DOM 对象，等同于`document.querySelectorAll`。

（5）`$x(path)`

`$x(path)`方法返回一个数组，包含匹配特定 XPath 表达式的所有 DOM 元素。

```
$x("//p[a]")
```

上面代码返回所有包含`a`元素的`p`元素。

（6）`inspect(object)`

`inspect(object)`方法打开相关面板，并选中相应的元素，显示它的细节。DOM 元素在`Elements`面板中显示，比如`inspect(document)`会在 Elements 面板显示`document`元素。JavaScript 对象在控制台面板`Profiles`面板中显示，比如`inspect(window)`。

（7）`getEventListeners(object)`

`getEventListeners(object)`方法返回一个对象，该对象的成员为`object`登记了回调函数的各种事件（比如`click`或`keydown`），每个事件对应一个数组，数组的成员为该事件的回调函数。

（8）`keys(object)`，`values(object)`

`keys(object)`方法返回一个数组，包含`object`的所有键名。

`values(object)`方法返回一个数组，包含`object`的所有键值。

```
var o = {'p1': 'a', 'p2': 'b'};

keys(o)
// ["p1", "p2"]
values(o)
// ["a", "b"]
```

（9）`monitorEvents(object[, events]) ，unmonitorEvents(object[, events])`

`monitorEvents(object[, events])`方法监听特定对象上发生的特定事件。事件发生时，会返回一个`Event`对象，包含该事件的相关信息。`unmonitorEvents`方法用于停止监听。

```
monitorEvents(window, "resize");
monitorEvents(window, ["resize", "scroll"])
```

上面代码分别表示单个事件和多个事件的监听方法。

```
monitorEvents($0, 'mouse');
unmonitorEvents($0, 'mousemove');
```

上面代码表示如何停止监听。



- `clear()`：清除控制台的历史。
- `copy(object)`：复制特定 DOM 元素到剪贴板。
- `dir(object)`：显示特定对象的所有属性，是`console.dir`方法的别名。
- `dirxml(object)`：显示特定对象的 XML 形式，是`console.dirxml`方法的别名。



### 计时器

`setTimeout("name",interval)`

经过一段时间后再运行函数，函数名以字符串传入第一个参数

`clearTimeout("name")`

`parseInt(element.style.yop)`将字符串"20px"转化为20(int)

### 时间日期 Date
UTC	Universal Time Coordinated	协调世界时
```js
let now = new Date()
```
Moment.js	Day.js库

### RegExp 正则表达式
```js
let pattern1 = "/pattern/flags;
let matches = pattern.exec(text);	//表达式.exec(检索文本)
```
### 动画

再一定时间间隔下重设元素的定位（top right）并检查是否到达终点



### 预览

精灵图

```css
<div>
overflow = hidden;
position=relative;
width:200px;
height:200px;
</div>
见CSS精灵图
```



### 压缩脚本

- [谷歌 Closure Complier](https://closure-complier.appspot.com/home)
- [雅虎 YUI Compressor](http://developer.yahoo.com/yui/compressor)



### 本地存储

```js
//写 键值对（字符串）
localStorage.saveItem("key","value")
//对象：
JSON.stringfy(object)
//读取
localStorage.getItem("key")
//删除
localStorage.removeItem("key")
//清空
localStorage.clear()


-->>localStorage
//清理本地缓存后xiao'shi
-->>sessionStorage
//关闭窗口后自动消失
```


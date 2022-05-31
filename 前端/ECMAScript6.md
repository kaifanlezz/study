# ECMAScript6

[阮一峰]([变量的解构赋值 - ECMAScript 6入门 (ruanyifeng.com)](https://es6.ruanyifeng.com/#docs/destructuring))

ES6 引入了一种新的原始数据类型`Symbol`，表示独一无二的值。它属于 JavaScript 语言的数据类型之一，其他数据类型是：`undefined`、`null`、布尔值（Boolean）、字符串（String）、数值（Number）、大整数（BigInt）、对象（Object）。

```javascript
const sym = Symbol('foo');

sym.description // "foo"
// toString法
const sym = Symbol('foo');

String(sym) // "Symbol(foo)"
sym.toString() // "Symbol(foo)"
```
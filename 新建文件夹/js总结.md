# js总结

## js的弹出框

~~~js
window.alert('');//弹出框
var r = confirm("请按按钮");//确认框
if (r == true) {
    x = "您按了确认！";
} else {
    x = "您按了取消！";
}
//提示框
window.prompt("sometext","defaultText");
//openToast 是一个封装的组件 亦可是自己封装的函数
function Toast(msg, duration) {
    duration = isNaN(duration) ? 3000 : duration;
    var m = document.createElement('div');
    m.innerHTML = msg;
    m.style.cssText = "max-width:60%;min-width: 150px;padding:0 14px;height: 40px;color: rgb(255, 255, 255);line-height: 40px;text-align: center;border-radius: 4px;position: fixed;top: 50%;left: 50%;transform: translate(-50%, -50%);z-index: 999999;background: rgba(0, 0, 0,.7);font-size: 16px;";
    document.body.appendChild(m);
    setTimeout(function () {
        var d = 0.5;
        m.style.webkitTransition = '-webkit-transform ' + d + 's ease-in, opacity ' + d + 's ease-in';
        m.style.opacity = '0';
        setTimeout(function () { document.body.removeChild(m) }, d * 1000);
    }, duration);
}
Toast('这是一个弹框', 2000)
~~~

## js的判断

~~~js
var obj = {}, bb = Object.prototype;
console.clear();
console.group(obj.prototype == bb);//false
console.log(obj.prototype === bb);//fasle
console.group(//true
    Object.getPrototypeOf(obj) === bb
)
var sed = /678/, ss = /678/;  不相等
console.group('第一层---------------');//开始
console.groupEnd();//结束
~~~

## js的白屏时间first paint 和可交互时间dom ready的关系

~~~js
白屏时间first paint 和可交互时间dom ready的关系
白屏时间 = 开始渲染时间(首字节时间 + HTML下载完成时间) + 头部资源加载时间
window.chrome.loadTimes().firstPaintTime
~~~

## js中的错误类型

> ### SyntaxError：语法错误

~~~js
// 1.1 变量名不符合规范
var 1                          // Uncaught SyntaxError: Unexpected number
var 1a                         // Uncaught SyntaxError: Invalid or unexpected token
// 1.2 给关键字赋值
function = 5                   // Uncaught SyntaxError: Unexpected token =  
//1.3 for if 等语句缺少（）{}
if(true){
   for(var i=0;i<10;i++){
}                              //Uncaught SyntaxError: Unexpected end of input
//1.4使用JSON.parse进行解析json字符串时，解析的内容不合法
 JSON.parse(function(){})      //Uncaught SyntaxError: Unexpected token u in JSON at position 1 
~~~

> ### Uncaught ReferenceError：引用错误

~~~js
// 2.1 引用了不存在的变量
a()                            // Uncaught ReferenceError: a is not defined
console.log(b)                 // Uncaught ReferenceError: b is not defined

// 2.2 给一个无法被赋值的对象赋值
console.log("abc") = 1         // Uncaught ReferenceError: Invalid left-hand side in assignment
~~~

> ### RangeError：范围错误
>
> RangeError是当一个只超出有效范围时发生的错误。主要的有几种情况，第一是数组长度为负数，第二是Number对象的方法参数超出范围，以及函数堆栈超过最大值。

~~~js
// 3.1 数组长度为负数
[].length = -5                        // Uncaught RangeError: Invalid array length
// 3.2 Number对象的方法参数超出范围
var num = new Number(12.34)
console.log(num.toFixed(-1))          // Uncaught RangeError: toFixed() digits argument must be between 0 and 20 at Number.toFixed
// 说明: toFixed方法的作用是将数字四舍五入为指定小数位数的数字,参数是小数点后的位数,范围为0-20.

//3.3内存溢出
var num=0;
        function foo(){
            console.log(++num);
            foo();
        }
        foo();                    //Uncaught RangeError: Maximum call stack size exceeded
~~~

> ### TypeError类型错误
>
> 变量或参数不是预期类型时发生的错误。

~~~js
// 4.1 调用不存在的方法
123()                                // Uncaught TypeError: 123 is not a function
var o = {}
o.run()                              // Uncaught TypeError: o.run is not a function

// 4.2 new关键字后接基本类型
var p = new 456                      // Uncaught TypeError: 456 is not a constructor

// 4.3尝试给undefined和null设置或是访问属性
null.name                            //Uncaught TypeError: Cannot read property 'name' of null
null.age=1							 //Uncaught TypeError: Cannot red property 'age' of null
undefined.name						 //Uncaught TypeError: Cannot read property 'name' of undefined
undefined.age=1						 //Uncaught TypeError: Cannot read property 'name' of undefined

// 4.1 调用不存在的方法
123()                                // Uncaught TypeError: 123 is not a function
var o = {}
o.run()                              // Uncaught TypeError: o.run is not a function

// 4.2 new关键字后接基本类型
~~~

### [SyntaxError](https://link.zhihu.com/?target=https%3A//developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SyntaxError)：语法错误

> 试图解析无效语法时发生

### [ReferenceError](https://link.zhihu.com/?target=https%3A//developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ReferenceError)：引用错误

> 1、引用不存在的变量时发生。
>
> 2、将变量赋值给一个无法赋值的对象时发生。

### [RangeError](https://link.zhihu.com/?target=https%3A//developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RangeError)：超出范围

> 当值不在允许值的集合或范围内时发生。

### [TypeError](https://link.zhihu.com/?target=https%3A//developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypeError)：类型错误

> 1、在值不属于预期类型时发生。
>
> 2、在尝试调用对象不具有的方法时。

### [URLError](https://link.zhihu.com/?target=https%3A//developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/URIError)：URL错误

> 与url相关函数参数不正确，主要是encodeURI()、decodeURI()、encodeURIComponent()、decodeURIComponent()、escape()和unescape()这六个函数。

### [InternalError](https://link.zhihu.com/?target=https%3A//developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/InternalError)：内部错误

> 由 JavaScript 引擎抛出的错误。

### [EvalError](https://link.zhihu.com/?target=https%3A//developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/EvalError)：eval错误

> 跟全局函数 eval() 有关的错误，在 ES5 之后已经不再出现了。
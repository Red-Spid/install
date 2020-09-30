## es6中Promise异步编程语法的使用



## es6 循环对象的方法

~~~js
arguments={}
Object.keys(arguments).forEach(function(v,i,a){
   console.log(v,i,a)
})
Object.getOwnPropertyNames(arguments).forEach(function(key){
   console.log(key);
});
~~~

在es6 中promise是一个很好的异步编程解决方案

~~~JS
// 继续简化 ......Promise.resolve 省略掉
        new Promise((resolve,reject)=>{
            setTimeout(()=>{
                resolve("Promise执行")  //下次执行
            },7000)
        }).then(data=>{//then    然后
            console.log(data);

            return data + "111111111111"
        }).then( data =>{// 然后
            console.log(data);
        }).catch( err =>{
            console.log(err);
        })
~~~

~~~JS
const aaa = new Promise((resolve,reject)=>{//resolve和reject 也都是函数
            // resolve()       
            // reject()
            setTimeout(()=>{
                let data1 = "Promise第一次请求";
                resolve(data1) //执行处理数据
            },7000)
        }).then(data=>{
            console.log(data);
            return Promise.resolve("Promise第二次请求")
        }).then(data=>{// 第二次处理代码then()
            console.log(data);
        })
        .catch(err => {
            console.log(err);
        })
~~~

~~~JS
new Promise((resolve,reject)=>{
            setTimeout(()=>{
                // resolve("Promise执行") 
                reject("err Message")
            },7000)
        }).then(data=>{//then    然后
            console.log(data);
        } , err => {
            console.log(err);
        })
~~~

~~~js
var a = Promise.all([
            new Promise((reslove, reject) => {
                setTimeout(() => {
                    reslove({ id: 1, age: 100 })
                }, 1000);
            }),
            new Promise((reslove, reject) => {
                setTimeout(() => {
                    reslove([1, 2, 3, 4, 5])
                }, 2000);
            }),
            new Promise((reslove, reject) => {
                reslove(true)
            })
        ]).then(a => {
            console.log(a);
        })
~~~


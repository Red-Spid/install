## 下载及使用

1. [**unpkg  会跟npm发布版本一致**](https://unpkg.com/vue/dist/vue.js)
2. [**Staticfile CDN（国内）**]( https://cdn.staticfile.org/vue/2.6.11/vue.min.js)
3. [**也可以直接引用网路连接 **](https://unpkg.com/vue/dist/vue.js)

### 基本使用语法

~~~html
<div id="app">
  <p>{{ message }}</p>
</div>
<script>
new Vue({
  el: '#app',
  data: {
    message: 'Hello Vue.js!'
  }
})
</script>
~~~

> vue中数据绑定
>
> 1. 使用双大括号的形式进行输出 {{xxx}}
> 2. 或者使用属性 v-html="message" 绑定到dom元素上

# 属性方法

> 使用v-bind:class 绑定class/id值  来展示样式

~~~html
<div id="app">
  <label for="r1">修改颜色</label>
  <input type="checkbox" v-model="use" id="r1">
  <br><br>
  <div v-bind:class="{'class1': use}">
    v-bind:class 指令
  </div>
</div>
<script>
new Vue({
    el: '#app',
  data:{
      use: false
  }
});
</script>
~~~

> ### 表达式 Vue.js 都提供了完全的 JavaScript 表达式支持。

~~~html
<div id="app">
    {{5+5}}<br>
    {{ ok ? 'YES' : 'NO' }}<br>
    {{ message.split('').reverse().join('') }}
    <div v-bind:id="'list-' + id">id值</div>
</div>
<script>
new Vue({
  el: '#app',
  data: {
    ok: true,
    message: 'RUNOOB',
    id : 1
  }
})
</script>
~~~

> ## 指令
>
> 指令是带有 v- 前缀的特殊属性。 指令用于在表达式的值改变时，将某些行为应用到 DOM 上。

~~~html
<div id="app">
    <p v-if="seen">现在你看到我了</p>
</div>
<script>
new Vue({
  el: '#app',
  data: {
    seen: true
  }
})
</script>
~~~

> ### 参数
>
> 参数在指令后以冒号指明。例如， v-bind 指令被用来响应地更新 HTML 属性：

~~~html
<div id="app">
    <pre><a v-bind:href="url">菜鸟教程</a></pre>
    <a v-on:click="doSomething">
    <form v-on:submit.prevent="onSubmit"></form>
<!--  .prevent 修饰符告诉 v-on 指令对于触发的事件调用 event.preventDefault()：    -->
    <input v-model="message">
<!--  进行双向数据绑定    -->
</div>
<script>
new Vue({
  el: '#app',
  data: {
    url: 'http://www.runoob.com'
  }
})
</script>
~~~

> ## 过滤器
>
> Vue.js 允许你自定义过滤器，被用作一些常见的文本格式化。由"管道符"指示, 格式如下：

~~~ html
<div id="app">
  {{ message | capitalize }}
</div>
<script>
new Vue({
  el: '#app',
  data: {
    message: 'runoob'
  },
  filters: {
    capitalize: function (value) {
      if (!value) return ''
      value = value.toString()
      return value.charAt(0).toUpperCase() + value.slice(1)
    }
  }
})
</script>
~~~

> 过滤器可以串联：
>
> ```html
> {{ message | filterA | filterB }}
> ```
>
> 过滤器是 JavaScript 函数，因此可以接受参数：
>
> ```html
> {{ message | filterA('arg1', arg2) }}
> ```

> ### v-bind 缩写
>
> Vue.js 为两个最为常用的指令提供了特别的缩写：
>
> ```html
> <!-- 完整语法 -->
> <a v-bind:href="url"></a>
> <!-- 缩写 -->
> <a :href="url"></a>
> ```
>
> ### v-on 缩写
>
> ```html
> <!-- 完整语法 -->
> <a v-on:click="doSomething"></a>
> <!-- 缩写 -->
> <a @click="doSomething"></a>
> ```

## vue实例的方法

1. ## computed 计算属性

   > ## computed setter
   >
   > computed 属性默认只有 getter ，不过在需要时你也可以提供一个 setter ：

~~~html
<div id="app">
  <p>原始字符串: {{ message }}</p>
  <p>计算后反转字符串: {{ reversedMessage }}</p>
</div>
<script>
  const vm=new Vue({
         	el: '#app',
          data: {
            message: 'Runoob!'
          },
   		computed: {
    // 计算属性的 getter
    reversedMessage: function () {
      // `this` 指向 vm 实例
      return this.message.split('').reverse().join('')
    }
  }
</script> 
~~~

2. ## methods

   > 我们可以使用 methods 来替代 computed，效果上两个都是一样的，但是 computed 是基于它的依赖缓存，只有相关依赖发生改变时才会重新取值。而使用 methods ，在重新渲染的时候，函数总会重新调用执行。

   ~~~html
   <div id="app">
     <p>原始字符串: {{ message }}</p>
     <p>计算后反转字符串: {{ reversedMessage }}</p>
     <p>使用方法后反转字符串: {{ reversedMessage2() }}</p>
   </div>
   
   <script>
   var vm = new Vue({
     el: '#app',
     data: {
       message: 'Runoob!'
     },
     computed: {
       // 计算属性的 getter
       reversedMessage: function () {
         // `this` 指向 vm 实例
         return this.message.split('').reverse().join('')
       }
     },
     methods: {
       reversedMessage2: function () {
         return this.message.split('').reverse().join('')
       }
     }
   })
   </script>
   ~~~

3. Vue.js 监听属性 watch，我们可以通过 watch 来响应数据的变化。

   ~~~html
     <div id = "computed_props">
            千米 : <input type = "text" v-model = "kilometers">
            米 : <input type = "text" v-model = "meters">
         </div>
   	   <p id="info"></p>
         <script type = "text/javascript">
            var vm = new Vue({
               el: '#computed_props',
               data: {
                  kilometers : 0,
                  meters:0
               },
               methods: {
               },
               computed :{
               },
               watch : {
                  kilometers:function(val) {
                     this.kilometers = val;
                     this.meters = this.kilometers * 1000
                  },
                  meters : function (val) {
                     this.kilometers = val/ 1000;
                     this.meters = val;
                  }
               }
            });
            // $watch 是一个实例方法
   		vm.$watch('kilometers', function (newValue, oldValue) {
   			// 这个回调将在 vm.kilometers 改变后调用
   		    document.getElementById ("info").innerHTML = "修改前值为: " + oldValue + "，修改后值为: " + newValue;
   		})
         </script>
   ~~~

4. ```
   Vue.component(tagName, options)组件 components是在new vue实例中创建的
   ```

![props](D:\学习文件\笔记md格式\img\props.png)

5. ## 自定义事件

   父组件是使用 props 传递数据给子组件，但如果子组件要把数据传递回去，就需要使用自定义事件！

   我们可以使用 v-on 绑定自定义事件, 每个 Vue 实例都实现了事件接口(Events interface)，即：

   - 使用 `$on(eventName)` 监听事件
   - 使用 `$emit(eventName)` 触发事件

   另外，父组件可以在使用子组件的地方直接用 v-on 来监听子组件触发的事件。

   ![$emit](D:\学习文件\笔记md格式\img\$emit.png)

   如果你想在某个组件的根元素上监听一个原生事件。可以使用 .native 修饰 v-on 。例如：

   ```html
   <my-component v-on:click.native="doTheThing"></my-component>
   ```

## Vue.js 自定义指令

除了默认设置的核心指令( v-model 和 v-show ), Vue 也允许注册自定义指令。

~~~html
<div id="app">
    <p>页面载入时，input 元素自动获取焦点：</p>
    <input v-focus>
</div>
<script>
// 注册一个全局自定义指令 v-focus
Vue.directive('focus', {
  // 当绑定元素插入到 DOM 中。
  inserted: function (el) {
    // 聚焦元素
    el.focus()
  }
})
// 创建根实例
new Vue({
  el: '#app'
})
new Vue({//局部自定义指令
  el: '#app',
  directives: {
    // 注册一个局部的自定义指令 v-focus
    focus: {
      // 指令的定义
      inserted: function (el) {
        // 聚焦元素
        el.focus()
      }
    }
  }
})
</script>
~~~

# 钩子函数

~~~html
<script>
    import Vue from 'vue';

Vue.component('Test', {
  props: {
    name: String
  },
  template: `<div class="test">{{ name }}</div>`,
  beforeCreate() {
    console.log('Test beforeCreate');
  },
  created() {
    console.log('Test created');
  },
  mounted() {
    console.log('Test mounted');
  },
  beforeDestroy() {
    console.log('Test beforeDestroy');
  },
  destroyed() {
    console.log('Test destroyed');
  },
  beforeUpdate() {
    console.log('Test beforeUpdate');
  },
  updated() {
    console.log('Test updated');
  }
});
Vue.component('Test1', {
  props: {
    name: String
  },
  template: '<div class="test1"><slot />{{ name }}</div>',
  beforeCreate() {
    console.log('Test1 beforeCreate');
  },
  created() {
    console.log('Test1 created');
  },
  mounted() {
    console.log('Test1 mounted');
  },
  beforeDestroy() {
    console.log('Test1 beforeDestroy');
  },
  destroyed() {
    console.log('Test1 destroyed');
  },
  beforeUpdate() {
    console.log('Test1 beforeUpdate');
  },
  updated() {
    console.log('Test1 updated');
  }
});
new Vue({
  el: '#app',
  data() {
    return {
      a: true,
      name: ''
    };
  },
  mounted() {
    setTimeout(() => {
      console.log('-----------');
      this.name = 'yibuyisheng1';
      this.$nextTick(() => {
        console.log('-----------');
      });
    }, 1000);

    setTimeout(() => {
      console.log('-----------');
      this.a = false;
      this.$nextTick(() => {
        console.log('-----------');
      });
    }, 2000);
  },
  template: '<Test1 v-if="a" :name="name"><Test :name="name" /></Test1><span v-else></span>'
});
</script>
~~~

~~~html
Test1 beforeCreate
Test1 created
Test beforeCreate
Test created
Test mounted
Test1 mounted
-----------
Test1 beforeUpdate
Test beforeUpdate
Test updated
Test1 updated
-----------
-----------
Test1 beforeDestroy
Test beforeDestroy
Test destroyed
Test1 destroyed
-----------
~~~


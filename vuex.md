# vuex的5大核心概念

## State

1. ~~~js
   import Vue from 'vue'
   import Vuex from 'vuex'
   Vue.use(Vuex)
   const store = new Vuex.Store({
       state: {
           count: 0
       },
       mutations: {
           increment(state) {
               state.count++
           }
       }
   })
   export default store
   ~~~

   > 我们通过vue.use(Vuex)来激活 vuex的使用
   >
   > 用new Vuex.Store来创建实例对象
   >
   > 调用时可以使用this.$store.commit("函数方法"，payload，option)

   ~~~js
   console.log(this.$store.commit("increment"))
   console.log(this.$store._mutations.increment[0]())
   ~~~

   

2. ~~~js
   
   ~~~

3. 
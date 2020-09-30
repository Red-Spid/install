import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '@/views/home/index.vue'
Vue.use(VueRouter)

var new_json = [
  {
      title: "产品列表",
      path: "product_list",
  }, 
  {
      title: "添加产品",
      path: "product_list_add",
  }, 
  {
      title: "分类管理",
      path: "product_type",
  },
  {
      title: "产品单位",
      path: "product_unit",
  },
];
var new_router = []
new_json.forEach((item) => {
  var title = item.title;
  var path = item.path;
  var temp = {
      path: '/' + path,
      component: Home,
      // component: () => import(`@/pages_new/${path}`),
      meta: { title: title }
  }
  new_router.push(temp);
})
console.log(new_router);




const routes = [
  {
    path: '/',
    redirect:'/home'
  },
  {
    path: '/Home',
    name: 'Home',
    component: Home,
    // children: [
    //   {
    //     path: 'search',//以“/”开头的嵌套路径会被当作根路径，所以子路由上不用加“/”;在生成路由时，主路由上的path会被自动添加到子路由之前，所以子路由上的path不用在重新声明主路由上的path了。
    //     name: 'search',
    //     component: ()=> import('@/components/centent/search.vue')
    //   },
    // ]
  },
  {
    path: '/search',
    name: 'search',
    component: ()=> import('@/components/centent/search.vue')
  },
  {
    path: '/class',
    name: 'class',
    component: ()=> import('@/views/class/index.vue')
  },
  {
    path: '/jx',
    name: 'jx',
    component: Home
  },
  {
    path: '/cart',
    name: 'cart',
    component: Home
  },
  {
    path: '/sigin',
    name: 'sigin',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: () => import('@/views/home/About.vue')
  }
]
const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})
export default router

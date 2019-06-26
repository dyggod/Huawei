import Vue from 'vue'
import Router from 'vue-router'

//引入index界面
import index from './components/Index'
//引入details界面
import details from './components/details'
//引入producs界面
import products from './components/products'
Vue.use(Router)
//引入service界面
import service from './components/service'
//引入cart购物车页面
import cart from './components/cart.vue'

export default new Router({
  routes: [
    {path:'/',component:index},
    {path:'/details/:pid',component:details,props:true},
    {path:'/products',component:products},
    {path:'/service',component:service},
    {path:'/cart',component:cart}
  ]
})

import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入用npm安装的axios模块
import axios from 'axios'
//引入components下的myHeader和myFooter文件
import myHeader from './components/myHeader';
import myFooter from './components/myFooter';
//将myHeader普通对象,封装为全局组件
Vue.component('my-header',myHeader)
//将my-Footer普通对象,封装为全局组件
Vue.component('my-footer',myFooter)
Vue.config.productionTip = false
//让axios自动携带cookieid到服务端,为session做准备
axios.defaults.withCredentials=true;
//将axios放入Vue的原型对象中去
Vue.prototype.axios=axios;


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

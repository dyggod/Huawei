// 引入两个模块 expres mysql
const express = require('express');
//2.引入pool连接池
//const pool=require('./pool.js')
// 3.创建服务器
var server=express();
//引入商品路由器
const proRouter=require('./routes/product.js');
// 4.指定静态资源目录
server.use(express.static('public'));
// 5.处理跨域请求
  const cors=require('cors')
  server.use(cors({
      origin:['http://127.0.0.1:8080','http://localhost:8080'],
      credentials:true
  }));
// 6.添加session功能
const session=require('express-session');
server.use(session({
    secret:'abcde',
    resave:true,
    saveUninitialized:true
}));
// 7.绑定监听端口
server.listen(3000);
//8.挂载商品路由器
server.use('/pro',proRouter)


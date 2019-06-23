const express=require('express');

//引入连接池
const pool =require('../pool.js');
//创建路由器
var router=express.Router();
//功能1 首页商品
router.get('/index',(req,res)=>{
    //var pid=req.query.pid;
    var output={
        // hot:[],
        // reco:[],
        // phone:[],
        // product:[],
    };
    var sql='select * from huawei_product where position=?';
    //查询服务器,依次解构
    pool.query(sql,['hot'],(err,result)=>{
        if(err)throw err;
        output.product=result;
        //console.log(output);
        pool.query(sql,['reco'],(err,result)=>{
            if(err){throw err};
            output.reco=result;
            //console.log(output);
            pool.query(sql,['phone'],(err,result)=>{
                if(err){throw err};
                output.phone=result;
                //console.log(output);
                pool.query(sql,['product'],(err,result)=>{
                    if(err){throw err};
                    output.product=result;
                    // console.log(output);
                    pool.query(sql,['laptop'],(err,result)=>{
                        if(err){throw err};
                        output.laptop=result;
                        //console.log(output);
                        res.send(output);
                    });
                });
            });
        });
       
    });  
});
// 功能2  登录测试端口
router.get('/login',(req,res)=>{
    var obj=req.query;
    //console.log(req.query);
    var sql='select uid,uname from huawei_user where uname=? and upwd=?';
    
    pool.query(sql,[obj.uname,obj.upwd],(err,result)=>{  //查询用户表中符合uname和upwd的信息
        if(err){throw err};
        //console.log(result);
        if(result.length>0){
			req.session.uid=result[0].uid; //将服务器的session中存入登录用户的uid
            res.send({code:'200',uid:result[0].uid,uname:result[0].uname});      //返回值  用作客户端session保存 
        }else {
            res.send({code:'404'})
        }
    })
});
//功能2.1  用户登录测试端口
router.get('/layout',(req,res)=>{
    //console.log(req.session);

})

//功能3  购物车页 
router.get('/cart',(req,res)=>{
    console.log(req.session.uid)
    var uid=2;//req.session.uid;
    //console.log(uid);
    var output={
        cart:[],
        product:[]
    };
    pool.query('select cid,pid,count from huawei_cart where uid=?',[uid],(err,result)=>{
        if(err){throw err};
        if(result.length>0){           
            output.cart=result; //将购物车数量及pid放入输出中
            //console.log(output.cart);
            //遍历cart数组,找出每个pid对应的商品
            var arr=[]
            for(let i=0;i<output.cart.length;i++){
                //console.log(output.cart[i])
                var pid=output.cart[i].pid;
                //console.log(pid+'打桩2');
                
                pool.query('select title,price,spec,show_img from huawei_product where pid=?',[pid],(err,result)=>{
                    if(err){throw err};
                    if(result.length>0){
                        //output.product.push(result);  //将商品信息逐一放入输出中
                        output.product=output.product.concat(result); 
                    }
                    if(i==output.cart.length-1){ //如果遍历到最后,则返回output到客户端
                        //output.product=arr;
                        res.send(output);
                        console.log(output);
                    }
                })               
            }        
        }
    })
})
    //3.1 购物车修改事件
        //数量加
    router.get('/cartadd',(req,res)=>{
        var cid=req.query.cid; //获得客户端的购物车cid和count
        var count=Number(req.query.count);
        count+=1;   //数量+1
        //console.log(cid);
        pool.query('update huawei_cart set count=? where cid=?',[count,cid],(err,result)=>{
            if(err){throw err};
            if(result.affectedRows>0){  //修改成功  返回200
                res.send("200");
            }
        })
    });
        //数量减
    router.get('/cartsub',(req,res)=>{
        var cid=req.query.cid;
        var count=Number(req.query.count);
        count-=1;
        //console.log(cid);
        pool.query('update huawei_cart set count=? where cid=?',[count,cid],(err,result)=>{
            if(err){throw err};
            if(result.affectedRows>0){
                res.send("200");
            }
        })
    })
//功能4 详情页商品端口
router.get('/details',(req,res)=>{
    var obj=req.query;
    var output={
        specs:{
            spec1:[],
            spec2:[]
        }
    };
    var sql='select*from huawei_product where pid=?';
    pool.query(sql,[obj.pid],(err,result)=>{//查找出对应pid商品的详情
        if(err){throw err};
        //console.log(result)
        output.detail=result;
        //console.log(output);
        pool.query('select*from huawei_img where pid=?',[obj.pid],(err,result)=>{//查找此商品所对应的所有图片
            if(err){throw err};
            output.img=result;
            
            pool.query('select*from huawei_product where tid=?',[output.detail[0].tid],(err,result)=>{
                if(err){throw err};
                output.specs=result;
                //console.log(output.detail[0].tid);
                res.send(output);
                // pool.query('select*from huawei_product where tid=? and spec=?',[output.detail[0].tid,'全网通8GB+128GB'],(err,result)=>{
                //     if(err){throw err};
                //     output.specs.spec2=result;
                //     console.log(output);
                //     res.send(output);
                // })
               
            })
        });      
    })
})
//功能5 商品列表页接口 分页查询
router.get('/products',(req,res)=>{
    var output={};
    //1.参数page,count
    var page=req.query.page;
    var count=req.query.count;
    //2.默认值
    if(!page)page=1;
    if(!count)count=20;
    //查询语句
    var sql='select pid,tid,pname,price,show_img from huawei_product Limit ?,?'; 
    page=(page-1)*count;
    count=parseInt(count);
    pool.query(sql,[page,count],(err,result)=>{
        if(err){throw err};
        //output.product=result;
        res.send(result);
        
        
    })
})










//导出本模块
module.exports=router;
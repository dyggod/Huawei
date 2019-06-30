<template>
    <section>
        <!-- 分为三层 top main bottom -->
        <div class="top">
            <div>
                <span>购物车</span>
                <p>
                    已选
                    <span>{{output.cart.length}}</span>
                    件商品
                    &nbsp; &nbsp; &nbsp;
                    合计(不含运费):
                    <span>{{priceAll}}元</span>
                </p>
            </div>
        </div>
        <div class="main">
            <div class="title">
                <div class="checkAll">
                    <input type="checkbox" @change="selectAll">
                    <span>全选</span>
                </div>
                <div class="product">
                    商品
                </div>
                <div >单价</div>
                <div class="number">数量</div>
                <div class="priceAll">金额</div>
                <div class="del">操作</div>
            </div>
            <div class="cart" v-for="(item,index) of output.product" :key="index">
                <div class="checkAll">
                    <input type="checkbox"  ref="ni">
                </div>
                <div class="product">
                    <img :src="item.show_img" alt="">
                    <div>
                         <a href="#">{{item.title}}</a>
                        <p class="mt-2">规格：{{item.spec}}</p>
                    </div>
                </div>
                <div class="price">
                    <span>华为专项价:</span>
                    <span>￥{{item.price}}</span>
                </div>
                <div>
                    <button @click="subCount" :data-cid="output.cart[index].cid" :data-count="output.cart[index].count">-</button>
                    <input style="width:40px;height:40px;text-align:center;outline:none" type="text" :value="output.cart[index].count" ref="count" readonly >
                    <button @click="addCount" :data-cid="output.cart[index].cid" :data-count="output.cart[index].count">+</button>
                </div> 
                <div>
                    {{ item.price*output.cart[index].count }}</div>
                <div class="del" @click="delCart" :data-cid="output.cart[index].cid">
                    删除
                </div>
            </div>
        </div>
        <div class="bottom">
            <div class="title">
                <div class="checkAll">
                    <input type="checkbox">
                    <span>全选</span>
                </div>
                <p>
                    已选
                    <span>0</span>
                    件商品
                    &nbsp; &nbsp; &nbsp;
                    合计(不含运费):
                    <span>0.00元</span>
                </p>
                <a href="JavaScript:;">去结算</a>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    data(){
        return{
            output:{
                cart:[
                    
                ],
                product:[
                    
                ]
            },
            priceAll:0
        }
    },
    props:[
        "uid"
    ],
    mounted(){
        this.load();
    },
    methods: {
        //全选按钮
        selectAll(e){
            //获取当前按钮的选中状态
            var rs=e.target.checked;
            //获取购物车数组列表，创建循环
            for(let item of this.$refs.ni){
                item.checked=rs; //改变当前商品的选中状态
                console.log(this.$refs.ni[0].checked)
            };
        },

        load(){  //加载页面函数
            var uid=sessionStorage.uid;  //获得当前登录状态的用户的uid
            if(uid){    //如果存在登录用户uid
            var src="http://127.0.0.1:3000/pro/cart";
            //var obj={uid:this.uid};
            this.axios.get(src,{params:''}).then(result=>{
                    this.output=result.data;
                    //循环遍历output.product,为每一项添加cb属性
                    for(let item of this.output.product){
                        item.cb=false;
                    };
                    console.log(this.output)
                })
            }else{  //如果不存在
                alert("请先登录");
                this.$router.push('/');
            };
            //计算出总价
            for(var i=0;i<this.output.cart.length;i++){
                this.priceAll+=this.output.cart[i].count*this.output.product[i].price;
            };
            console.log(this.priceAll);

        },
        addCount(e){  //加按钮事件
            console.log(e.target.dataset.cid);
            //console.log(this.$refs.count.value);
            var cid=e.target.dataset.cid;   //自定义属性获得所在商品购物车的cid和count
            var count=e.target.dataset.count;
            this.axios.get('http://127.0.0.1:3000/pro/cartadd',{params:{cid:cid,count:count}}).then(result=>{
               //console.log(result);
               this.load();  //重新加载页面
            })
        },
        subCount(e){
            var cid=e.target.dataset.cid;
            var count=e.target.dataset.count;
            if(count>1){  //只有当现在的数量大于一时,才进行减量的修改
                this.axios.get('http://127.0.0.1:3000/pro/cartsub',{params:{cid:cid,count:count}}).then(result=>{
                //console.log(result);
                })
            }
            this.load();
        },
        //删除一个商品
        delCart(e){
            //弹出提示消息
            confirm('是否删除');
            // console.log("cancel")
            if("cancel"==true){ //如果选择取消
                return;   //那么停止执行
            }else{
                //拿到cid
                var cid=e.target.dataset.cid;
                var obj={cid:cid}
                //发送请求，删除数据库购物车数据
                this.axios.get('http://127.0.0.1:3000/pro/delCart',{params:obj}).then(result=>{
                    console.log(result);
                    if(result.data==200){
                        this.load();
                    }else{
                        alert('删除失败')
                    }
                })
            }
        }
    },

}
</script>

<style scoped>
    /* 总体 */
    section>div{
        width: 1200px;
        margin:0 auto;
    }
    /* div.top */
    div.top>div{
        display: flex;
        justify-content: space-between;
    }
    div.top>div>span{
        font-size: 20px;
        color:#000;
        font-weight: bolder;
    }
    div.top>div>p{
        font-size: 12px;
        margin: 0;
        line-height: 30px;
    }
    div.top>div>p>span{
        color:#ff8486;
        font-size: 18px;
    }
    /* div.main */
    div.main>div.title{
        display: flex;
        justify-content: space-between;
        border-top: 1px solid #ccc;
    }
    div.main>div.title>div{
        height:37px;
        width: 175px;
        background: #f9f9f9;
        line-height: 37px;
    }
    div.main>div.title>div.checkAll{
        width: 50px;
    }
    div.main>div.title>div.product{
        width:450px;
    }
    div.main>div.cart{
        display: flex;
        justify-content: space-between;
    }
    div.main>div.cart>div{
        height: 115px;
        display: flex;
        justify-content: center;
        align-items: center;
         width: 175px;
    }
    div.main>div.cart>div.checkAll{
        width: 50px;
    }
    div.main>div.cart>div.product{
        width:450px;
        font-size: 12px;
        padding-left: 20px;
    }
    div.main>div.cart>div.product>img{
        /* width: 80px; */
        height: 80px; 
    }
    div.main>div.cart>div.product a{
        text-decoration: none;
        color: #000;
    }
    div.main>div.cart>div.product>div{
       text-align: left;
       margin-left: 10px;
       width: 340px;
    }
    div.main>div.cart>div>button{
        width:30px;
        height:40px
    }
    div.main>div.cart>div.price{
        flex-flow: column;
    }
    div.main>div.cart>div.price>span:first-child{
        color: #ff8486;
    }
    div.main>div.cart>div.del{
        cursor: pointer;
    }
    /* div.bottom */
    div.bottom>div.title{
        display: flex;
        justify-content: space-between;
        background: #f9f9f9;
        line-height: 40px;
    }
    
    div.bottom>div.title>p{
        margin-left: 550px;
        margin-bottom: 0;
    }
     div.bottom>div.title>a{
         display: inline-block;
         width: 150px;
         height:40px;
         color:#fff;
         background-color: #74c7ff;
         border-radius: 5px;
         text-decoration: none;
     }
</style>

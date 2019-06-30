<template>
    <section>
        <!-- 商品页上部 -->
        <div class="top">
            <div class="d1">
                <ul class="list-unstyled d-flex">
                    <li>首页</li>
                    <li>></li>
                    <li>手机</li>
                </ul>
            </div>
            <div class="d2">
                <div class="">
                    <ul class="list-unstyled d-flex">
                        <li>分类:</li>
                        <li>
                            <a href="#">全部</a>
                        </li>
                        <li>
                           <a href="#">HUAWEI Mate系列</a>
                        </li>
                        <li>
                           <a href="#">HUAWEI P系 列</a>
                        </li>
                        <li>
                           <a href="#"> HUAWEI 麦芒系列</a>
                        </li>
                        <li>
                           <a href="#">HUAWEI 麦芒系列</a> 
                        </li>
                        <li>
                           <a href="#">HUAWEI 麦芒系列</a> 
                        </li>
                        <li>
                           <a href="#">HUAWEI 麦芒系列</a> 
                        </li>
                        <li>
                           <a href="#">HUAWEI 麦芒系列</a> 
                        </li>
                    </ul>
                </div>
                <div>
                    <ul class="list-unstyled d-flex">
                        <li>排序:</li>
                        <li>
                            <a href="#">上架时间</a>
                        </li>
                        <li>
                            <a href="#">价格</a>  
                        </li>
                        <li>
                           <a href="#">评价</a> 
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 商品页内容 -->
        <div class="content">
            <!-- 一层商品列表 -->
            <div class="d1 d-flex">
                <div v-for="(p,index) of products.product" :key="index">
                    <div class="position-relative" >
                        <div>
                            <router-link :to="`/details/${p.pid}`" target="_blank">
                                  <img :src="p.show_img" alt=""> 
                            </router-link>
                        </div>
                        <img class="position-absolute" src="img/newProduct.png" alt="">
                        <p>{{p.pname}}</p>
                        <h6>¥{{p.price}}</h6>
                        <div class="d-flex">
                            <div>
                                <router-link :to="`/details/${p.pid}`" target="_blank">选购</router-link>
                            </div>
                            <div>5人评价</div>
                        </div>
                    </div>
                </div>
                <!-- <div></div>
                <div></div>
                <div></div>
                <div></div> -->
            </div>
        </div>
        <!-- 商品页分页栏 -->
        <div class="bottom">
            <div class="">
                <ul class="pagination">
                    <li class="page-item">
                        <a href="#" class="page-link">|&lt;</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">&lt;</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">1</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">2</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">3</a>
                    </li>
                    <li class="page-item">
                        <a href="JavaScript:;" class="page-link" @click="loadMore">></a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">>|</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 其他 -->
        <div class="service-main container-fluid">
            <div class="service-d5">
                <div>
                    产品支持
                </div>
                <div class="product">
                    <div>
                        <a href="JavaScript:;">
                            <img src="img/service/d5lg.jpg" alt="">
                        </a>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <img src="img/service/d51.png" alt="">
                                <span>华为手机</span>
                                <div class='appear'>
                                    <ul>
                                        <li>
                                            <span>华为手机</span>
                                            <a href="JavaScript:;">更多></a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 20</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 10</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI nova 2s</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <img src="img/service/d51.png" alt="">
                                <span>华为手机</span>
                                <div class='appear'>
                                    <ul>
                                        <li>
                                            <span>华为手机</span>
                                            <a href="JavaScript:;">更多></a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 20</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 10</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI nova 2s</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <img src="img/service/d52.png" alt="">
                                <span>华为手机</span>
                                <div class='appear'>
                                    <ul>
                                        <li>
                                            <span>华为手机</span>
                                            <a href="JavaScript:;">更多></a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 20</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 10</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <img src="img/service/d53.png" alt="">
                                <span>华为手机</span>
                                <div class='appear'>
                                    <ul>
                                        <li>
                                            <span>华为手机</span>
                                            <a href="JavaScript:;">更多></a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 20</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 10</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI nova 2s</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <img src="img/service/d54.png" alt="">
                                <span>华为手机</span>
                                <div class='appear'>
                                    <ul>
                                        <li>
                                            <span>华为手机</span>
                                            <a href="JavaScript:;">更多></a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 20</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 10</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI nova 2s</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <img src="img/service/d55.png" alt="">
                                <span>华为手机</span>
                                <div class='appear'>
                                    <ul>
                                        <li>
                                            <span>华为手机</span>
                                            <a href="JavaScript:;">更多></a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI P30</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 20</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI Mate 10</a>
                                        </li>
                                        <li>
                                            <a href="JavaScript:;">HUAWEI nova 2s</a>
                                        </li>                
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class='service-d6'>
                <div>华为商城官方服务</div>
                <div>
                    <a href="JavaScript:;">
                        <img src="img/service/service1.png" alt="">
                    </a>
                </div>
                <div>
                    <a href="JavaScript:;">
                        <img src="img/service/service2.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    data(){
        return {
            products:{product:[{pid:'',tid:'',pname:'',price:''}],
                img:[]
            }
        }
    },
    methods: {
        loadMore(){
            console.log('打桩');
            //url地址
            var url='http://127.0.0.1:3000/pro/products'
            //
            var obj='';
            this.axios.get(url,{params:obj}).then(result=>{
               
                this.products.product=result.data;
                 console.log(this.products);
            })
        },
        
    },
    created() {
        this.loadMore();
    },
}
</script>

<style scoped>
    section>div{
        width: 1200px;
        margin:0 auto;
    }
    /* div.top  上部 */
    div.top>div{
        color:#888;
        font-size: 12px;
    }
    div.top>div.d1{
        color:#222;
    }
    div.top>div.d2 ul,div.top>div.d3 ul{
        height:50px;
        border:1px solid #ccc;
        line-height: 50px;
        padding-left: 50px;
    }
    div.top>div.d2 ul>li>a,div.top>div.d3 ul>li>a{
        text-decoration: none;
        color:#888;
        font-size: 12px;
    }
    div.top>div.d2 ul>li>a:hover,div.top>div.d3 ul>li>a:hover{
        color:#444;
    }
    div.top>div li:first-child{
        color:#222;
    }
    div.top>div li{
        margin-left:20px;
    }
    /* 商品页内容 div.content */
    div.content>div>div{
        width:240px;
        padding-right: 10px;
        /* padding-left: 15px; */
        margin-bottom: 10px;
    }
    div.content>div.d1{
        flex-wrap: wrap;
    }
    div.content>div>div>div{
         border: 1px solid #ccc;
    }
    div.content>div>div>div:hover{
        border: 1px solid red;
    }

    div.content>div>div>div>div:first-child{
          padding-top: 38px;
          padding-bottom: 24px;
    }
    div.content>div>div>div>div img{
         width: 180px;
         height: 180px;
    }
     div.content>div>div>div>img{
         top:180px;
         left:160px;
     }
     div.content>div>div>div>p{
         font-size: 12px;
     }
     div.content>div>div>div>h6{
         color:#e01d20;
         font-weight: bolder;
     }
     div.content>div>div>div>div:last-child>div{
         width: 119px;
         height: 30px;
         line-height: 30px;
         border-top:1px solid #ccc;
         font-size: 14px;
     }
     div.content>div>div>div>div:last-child>div:first-child>a{
         display: inline-block;
         width: 100%;
        color: #e01d20;
        text-decoration: none
     }
    div.content>div>div>div>div:last-child>div:first-child>a:hover{
        color: #fff;
        background-color: #e01d20;
    }
     div.content>div>div>div>div:last-child>div+div{
          border-left: 1px solid #ccc;
     }
    
    /* div.bottom */
    div.bottom>div{
       height: 100px;
    }
    div.bottom>div>ul{
        float: right;
        width: 250px;
        height:40px; 
        margin-top: 20px;
        margin-right: 10px;  
    }
    div.bottom>div>ul a{
        color: #666;
    }

      /* 其他************************ */
    div.service-main{
        width: 100%;
        padding: 0;
    }
    div.service-main>div{
        width:1200px;
        margin:0 auto;
    }
     /* d5 */
    div.service-d5{
        width: 100%;
        background-color: #f0f0f0;
    }
    div.service-d5>div:first-child{
        width: 1200px;
        margin:0 auto;
        height:74px;
        color:#ddb076;
        font-size: 20px;
        text-align: left;
        padding: 26px 0 18px 20px;
    }
    div.service-d5>div.product{
        width: 1200px;
        margin:0 auto;
        background-color: #fff;
        padding: 20px 20px 0 20px;
    }
    div.product>div:first-child img{
        width: 1160px;height: 505px;
    }
    div.product>div>ul{
        list-style: none;
        display: flex;
        width: 1160px;
        height:262px;
        padding: 0;
        margin: 0;
        justify-content: space-between;
    }
    div.product>div>ul>li{
        margin-top: 40px;
        width: 190px;
        position: relative;
    }
    div.product>div>ul>li>img{
        width: 130px;height: 130px;
        margin: 0 30px;
    }
    div.product>div>ul>li>span{
        display:  block;
        color: #000;
        font-size: 20px;
        font-weight: normal;
        margin: 20px 0 43px 0;
    }
    /* 隐藏栏 div.appear */
    div.product div.appear ul{
        width: 100%;
        height: 262px;
        list-style: none;
        background-color: rgba(0, 0, 0, 0.8);
        color: #fff;
        font-size: 18px;
        position: absolute;
        top: -40px;
        left: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        justify-content: left;
        border-radius: 2px;
    }
    div.product div.appear ul li{
        margin-top: 5px;
        text-align: left;
        padding-left: 20px;
    }
    div.product div.appear ul li:first-child a{
        float: right;
        margin-right: 20px;
    }
    div.product div.appear ul li a{
        color:#fff;
        text-decoration: none;
    }
    div.product div.appear{
        display: none;
    }
        /* 出现 */
    div.product>div>ul>li:hover div.appear{
        display: block;
    }
    /* service-d6 */
    div.service-main>div.service-d6{
        width: 100%;
        background-color: #f0f0f0;
    }
    div.service-main>div.service-d6>div:first-child{
        width: 1200px;
        margin: 0 auto;
        height:74px;
        color:#ddb076;
        font-size: 20px;
        text-align: left;
        padding: 26px 0 18px 20px;
    }
    div.service-main>div.service-d6>div img{
        width: 100%;
    }
</style>

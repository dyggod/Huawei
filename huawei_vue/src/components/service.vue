<template>
    <section>
        <!-- 轮播图 -->
        <div class="banner container-fluid position-relative">
            <div v-for="(img,index) in bannerList" v-show="index==mark"  :key='index'>
                <a href="JavaScript:;">
                    <img :src="img" alt="" style="height:450px;">
                </a> 
            </div>
            <!-- 导航小按钮 -->
            <div class="bar text-center" >
                <span v-for='(item,index) of bannerList' :class="{'active':index==mark}" :key='index' @click='change(index)'></span>
            </div>
        </div>
        <!-- 中心内容部分 -->
        <div class="main container-fluid">
            <div class="d1">
                <div>
                    <input type="text" placeholder="请用一句话描述您的问题,如:'如何查找订单'">
                    <a href="#">提问</a>
                </div>
            </div>
            <div class="d2">
                <div>
                    <div>自助服务</div>
                </div>
                <div class="hr"></div>
                <div>
                    <ul>
                        <li>
                            <a href="#">
                                <img src="img/service/help1.jpg" alt="">
                                <span>物流订单</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help2.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help3.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help4.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help5.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help6.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help7.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help8.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help9.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help10.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help11.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/service/help12.jpg" alt="">
                                <span>账户管理</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="d3">
                <a href="JavaScript:;">
                    <img src="img/service/middle.png" alt="">
                </a>
            </div>
            <div class="d4">
                <ul>
                    <li>
                        <img src="img/service/d41.png" alt="">
                        <div>
                            <div>购物指南</div>
                            <div>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <img src="img/service/d42.png" alt="">
                        <div>
                            <div>账户管理</div>
                            <div>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <img src="img/service/d43.png" alt="">
                        <div>
                            <div>权益说明</div>
                            <div>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <img src="img/service/d44.png" alt="">
                        <div>
                            <div>售后服务</div>
                            <div>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                                <a href="JavaScript:;">订单操作</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="d5">
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
            <div class='d6'>
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
        return{
            mark:0,
            bannerList:['img/service/service1.png','img/service/service2.jpg']
        }
    },
    created(){
        console.log('打桩1');
        this.play();
    },
    methods:{
        autoplay(){
            //console.log(this.mark)
            //console.log(this.subMark);
            this.mark++;
            this.subMark++;
            if (this.mark==2){
                this.mark=0
            };
        },
        play(){
            setInterval(this.autoplay,3000)
        },
        change(index){ //点击小按钮,跳到对应index图片,index传参过来
            this.mark=index;
        },
    },
}
</script>

<style scoped>
    /* 轮播图 */
    div.banner{
        height:450px;
        background-color: red;
    }
    div.banner div.bar{
        height: 20px;
        top:400px;
        left: 45%;
    }
    div.banner div.bar span{
        width: 15px;
        height: 15px;
    }
    /* 中心内容部分 div.main */
    div.main{
        padding: 0;
    }
    div.main>div{
        width:1200px;
        margin:0 auto;
    }
    /* d1 */
    div.main>div:first-child{
         width: 100%;
         background-color: #f8f8f8;
         height:108px;
         padding: 24px 0;
    }
    div.main>div.d1 div{
        width: 900px;
        height:60px;
        margin: 0 auto;
    }
    div.main>div.d1 div input{
        width: 763px;
        height: 100%;
        font-size: 24px;
        color:#444;
        padding-left: 20px;
        border: 1px solid #eee;
        outline: none;
    }
    div.main>div.d1 div a{
        display: inline-block;
        width: 135px;
        height: 60px;
        background-color: #b19f7b;
        line-height: 60px;
        font-size: 22px;
        color: #fff;
        text-decoration:none;
    }
    /* d2*/
    div.main>div.d2{
        width: 100%;
    }
    div.main>div.d2>div:first-child>div{
         width: 1200px;
        margin: 0 auto;
        height: 60px;
        text-align: left;
        font-size: 20px;
        line-height: 60px;
        color:#ddb076;
    }
    div.main>div.d2 div.hr{
        height: 1px;
        background: #ddd;
    }
    div.main>div.d2>div:last-child{
        width: 1200px;
        margin: 0 auto;
    }
    div.main>div.d2>div:last-child ul{
        list-style: none;
        display: flex;
        width: 1200px;
        flex-wrap: wrap;
        justify-content: space-between;
        padding: 0;
    }
    div.main>div.d2>div:last-child ul li{
        width: 180px;
        margin-top: 30px;
    }
    div.main>div.d2>div:last-child ul li img{
        width:70px;
        height: 70px;
    }
    div.main>div.d2>div:last-child ul li a{
        color: #333;
        font-size: 14px;
        text-decoration: none;
    }
    div.main>div.d2>div:last-child ul li a span{
        display: block;
        margin-top: 5px;
    }
    /* d3 */
    div.main>div.d3{
        margin:40px auto;
    }
    /* d4 */
    div.main>div.d4 ul{
        width: 100%;
        list-style: none;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        padding: 0;
    }
    div.main>div.d4 ul li{
        width: 590px;
        display: flex;
        justify-content: space-between;
        height:136px;
        background-color: #f8f8f8;
        margin-bottom: 20px;
        border: 1px solid #f6f6f6;
    }
    div.main>div.d4 li img{
        width: 50px;
        height:50px;
        margin-left: 45px;
        margin-top: 42px;
    }
    div.main>div.d4 li>div{
        width: 445px;
        height: 100%;
        padding: 35px 0 25px 25px;
        font-size: 18px;
        color:#ddb076;
        text-align: left;
        font-weight: bolder;
    }
    div.main>div.d4 li>div>div>a{
        display: inline-block;
        width: 56px;
        font-size: 14px;
        text-decoration: none;
        color:#bbb;
        margin-right: 10px;
        margin-bottom: 5px;
        font-weight: normal;
    }
    /* d5 */
    div.main>div.d5{
        width: 100%;
        background-color: #f0f0f0;
    }
    div.d5>div:first-child{
        width: 1200px;
        margin:0 auto;
        height:74px;
        color:#ddb076;
        font-size: 20px;
        text-align: left;
        padding: 26px 0 18px 20px;
    }
    div.d5>div.product{
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
    /* d6 */
    div.main>div.d6{
        width: 100%;
        background-color: #f0f0f0;
    }
    div.main>div.d6>div:first-child{
        width: 1200px;
        margin: 0 auto;
        height:74px;
        color:#ddb076;
        font-size: 20px;
        text-align: left;
        padding: 26px 0 18px 20px;
    }
    div.main>div.d6>div img{
        width: 100%;
    }
</style>

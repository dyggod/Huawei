<template>
    <section class="contai">
        <!-- 面包屑导航 -->
        <div class="bread">   
            <ul class="breadcrumb">
                <li class="breadcrumb-item">首页</li>
                <li class="breadcrumb-item">&nbsp;&nbsp;&nbsp;手机</li>
                <li class="breadcrumb-item">&nbsp;&nbsp;&nbsp;荣耀</li>
                <li class="breadcrumb-item">&nbsp;&nbsp;&nbsp;荣耀20</li>
            </ul>
        </div>
        <!--详情面板  分为左边图片部分和右边文字部分  -->
        <div class='detail d-flex'>
            <!-- 左 -->
            <div class='left position-relative'>
                <!-- 放置中图 -->
                <div class="md" @mouseenter="appear" @mouseleave="disappear" @mousemove="move">
                    <img :src="list.img[0].md" alt="">
                </div>
                <div id='mask' ref="mask" class="position-absolute d-none" :class='UP' style="width:225px;height:225px;"></div>
                <div id='supermask' class="position-absolute" style='width:450px;height:450px;' @mouseenter="appear" @mouseleave="disappear" @mousemove="move"></div>
                <!-- 放置小图 -->
                <div class='sm d-flex'>
                    <a href="JavaScript:;" class="icon-l" @click="left"></a>
                    <div>
                        <ul class="pl-0" ref='sm_ul'>    
                            <li v-for='(item,index) of list.img' :key='index'>
                                <a href="#">
                                    <img :src="item.sm" alt="">
                                </a>
                            </li>
                            <!-- <li>
                                <a href="#">
                                    <img src="img/sm1.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="img/sm1.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="img/sm1.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="img/sm1.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="img/sm1.png" alt="">
                                </a>
                            </li> -->
                        </ul>
                    </div>
                    <a href="JavaScript:;" class="icon-r" @click="right"></a>
                </div>
            </div>
            <!-- 右 -->
            <div class='right position-relative'>
                <!-- 大图 -->
                <div class="lg position-absolute" ref="lg_img" :style="list.lg">
                    <!-- <img src="img/lg1.png" alt=""> -->
                </div>
                <!-- 详情 -->
                <h4>{{list.detail[0].title}}</h4>
                <div class="d1 text-left mb-2">
                    <span style="color:red;" >【超级618】到手价：2499元！限时优惠 300元，下单再减200元，限时抢购！</span>
                    &nbsp; &nbsp; &nbsp;麒麟980处理器|4800万像素摄像头|4000mAh大容量电池|超级快充
                </div>
                <div class="d2">
                    <div class="d-flex">
                        <label for="">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格</label>
                        <div>
                            <span>抢购价</span>
                            <span> ¥{{list.detail[0].price}}</span>
                            <span> ¥ 2999 </span>
                        </div>
                    </div>
                    <div class="d-flex">
                        <label for="">促&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</label>
                        <div>
                            <ul class="list-unstyled">
                                <li>
                                    <span>限时特价</span>
                                    <span>限时直降200元</span>
                                </li>
                                <li>
                                    <span>限时特价</span>
                                    <span>限时直降200元</span>
                                </li>
                                <li>
                                    <span>限时特价</span>
                                    <span>限时直降200元</span>
                                </li>
                                <li>
                                    <span>限时特价</span>
                                    <span>限时直降200元</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="d-flex d3">
                    <label for="">服务说明</label>
                    <img  src="img/icon/icon3.png" alt="">
                    <span>已满48元已免运费 </span>
                    <img class='ml-3' src="img/icon/icon3.png" alt="">
                    <span>由华为商城负责发货，并提供售后服务</span>
                </div>
                <hr class="mt-2 mb-2">
                <div class="d-flex d4">
                    <label for="">选择颜色</label>
                    <ul class="d-flex list-unstyled">
                        <li v-for="(spec,index) of list.specs" :key="index">
                            <router-link :to="`/details/${spec.pid}`" :class="{active:spec.pid==pid}" target="_self">{{spec.color}}</router-link>
                        </li>
                    </ul>
                </div>
                <div class="d-flex d5">
                    <label for="">选择版本</label>
                    <ul class="d-flex list-unstyled">
                        <!-- <li v-for="(spec,index) of list.specs" :key="index">
                            <router-link :to="`/details/${spec[0].pid}`" :class="{active:spec[0].spec==pid}">{{spec[0].spec}}</router-link>
                        </li> -->
                        <li>
                            <router-link to="" ></router-link>
                            <!-- <router-link to="" class="ml-2">全网通8GB+128GB</router-link> -->
                        </li>
                    </ul>
                </div>
                <div class='d-flex d6'>
                    <label for="">保障服务</label>
                    <a href="#">延长服务宝1年 ¥206.4</a>
                    <a href="#">碎屏(含后盖)服务宝1年 ¥159.2</a>
                </div>
                <div class="d-flex d7">
                    <label for="">已选择商品</label>
                    <p>魅海蓝 / 全网通 6GB+128GB / 官方标配 /</p>
                </div>
                <div class="d-flex d8">
                    <div class="d-flex">
                        <input type="text" value="1">
                        <p class="d-flex flex-column">
                            <a href="#">+</a>
                            <a href="#">-</a>
                        </p>
                    </div>
                    <div>
                        <a href="JavaScript:;" @click="addCart">加入购物车</a>
                        <a href="#">立即下单</a>
                    </div>
                </div>
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
var moved=0;
export default {
    data(){
        return {
            // smlist:['img/sm1.png','img/sm2.png','img/sm3.png','img/sm4.png','img/sm5.png','img/sm2.png'],
            UP:{
                up:false
            },
            list:{
            detail:[{pid:'',tid:'',pname:'',title:'',price:0,color:'',spec:''}],
            img:[{iid:'',pid:'',sm:'',md:'',lg:''}],
            specs:[],
            lg:''
            }
        }
    },
    props:[
        "pid"
    ],
    methods:{
        right(){ //1.点击小图右移动
            moved++;
            var l=this.img.length-5
            if(moved>l){
                moved=l
            };
            //console.log(moved,this.smlist.length);
            var ml=(-74)*moved+'px';
            //console.log('123')
            this.$refs.sm_ul.style.marginLeft=ml;
        },
        left(){//2.点击小图左移动
            moved--;
            if(moved<0){
                moved=0
            }
            var ml=(-74)*moved+'px';
            //console.log(ml)
            this.$refs.sm_ul.style.marginLeft=ml;
        },
        appear(){//3.大图出现
            //console.log('打桩');
            //this.$refs.mask.style.display='block';  
            this.UP.up=true;
            //console.log(this.UP);
            this.$refs.lg_img.style.display='block';
        },
        disappear(){//4.大图消失
            //console.log('打桩');
            //this.$refs.mask.style.display='none';
            this.UP.up=false;
            this.$refs.lg_img.style.display='none'; 
        },
        move(e){//5.鼠标在中途上移动时,显示对应大图的具体位置
            var left=e.offsetX-117.5;
            if(left>225){left=225}else if(left<0){left=0}
            var top=e.offsetY-117.5;
            if(top>225){top=225}else if(top<0){top=0}
            //console.log(left,top)
            this.$refs.mask.style.left=left+'px';
            this.$refs.mask.style.top=top+'px';
            
            this.$refs.lg_img.style.backgroundPosition=`${-left*1.8}px ${-top*1.8}px`;
        },
        //6.加载页面
        load(){
             var url='http://127.0.0.1:3000/pro/details';
            var obj={pid:this.pid};
            this.axios.get(url,{params:obj}).then(result=>{
                this.list.detail=result.data.detail;
                this.list.img=result.data.img;
                // for(var i=0;i<=this.img.length;i++){
                //     var a=`backgroundImage:url(${this.img[i].lg});`
                //     this.lg.push(a)
                //     console.log(this.lg)
                // };
                this.list.lg=`backgroundImage:url(${this.list.img[0].lg});`
                this.list.specs=result.data.specs;
                console.log(this.list.lg);
                //console.log(this.list.specs);
            })
        },
        //7.将商品加入购物车事件
        addCart(){
            console.log('addCart打桩');
            
            //拿到打开此页面的的用户的uid以及此页面商品的pid
            var uid=sessionStorage.uid;
            var pid=this.pid;
            //先判断是否有uid,如果没有--->请先登录
            if(!uid){
                alert('请先登录');
            }else{
                var src="http://127.0.0.1:3000/pro/addCart";
                var obj={
                    uid:uid,
                    pid:pid
                }
                this.axios.get(src,{params:obj}).then(result=>{
                    console.log(result.data);
                    if(result.data==200){
                        alert('加入成功')
                    }else {
                        alert('加入失败');
                    }
                })
            }
            
        }
        // nowSpec1(){
        //     console.log('打桩');
        //     this.nowSpec=this.list.specs.spec1;
            
        // },
        // nowSpec2(){
        //     this.nowSpec=this.listspecs.spec2;
        //       console.log(this.nowSpec)
        // }
    },
    created(){
        //console.log('111');
        // var url='http://127.0.0.1:3000/pro/details';
        // var obj={pid:this.pid};
        // this.axios.get(url,{params:obj}).then(result=>{
        //     this.list.detail=result.data.detail;
        //     this.list.img=result.data.img;
        //     // for(var i=0;i<=this.img.length;i++){
        //     //     var a=`backgroundImage:url(${this.img[i].lg});`
        //     //     this.lg.push(a)
        //     //     console.log(this.lg)
        //     // };
        //     this.list.lg=`backgroundImage:url(${this.list.img[0].lg});`
        //     this.list.specs=result.data.specs;
        //     console.log(this.list);
        // })
        this.load();
    },
    watch: {  //监听页面pid的变化   
        pid(){
            this.load();
        }
    },
}
</script>

<style scoped>
    section>div{
        width:1200px;
        margin:0 auto;
    }
    div.detail>div.left{
        width:450px;
    }
    /* 面包屑导航 */
    div.bread ul{
        background-color: #fff;
        margin: 10px 0;padding: 0;
        font-size: 12px;
    }
    div.bread ul li{
        margin: 0 10px;
    }
    li.breadcrumb-item+li.breadcrumb-item::before{
        content: '>';
    }

    /* 左侧 */
        /* 大图部分 */
    div.lg{
        width:420px;height:420px;
        top:0;
        left:20px;
        /* background: url('../../public/img/lg1.png') no-repeat; */
        background-repeat: no-repeat;
        background-position: 0px 0px;
        background-color: #fff;
        border:2px solid #ccc;
        display: none;
    }
        /* 中图部分 放置阴影*/
    div.md{
        width: 450px;
        height:450px;
    }
    div.md img{
        width: 100%;
        height:100%;
    }
    /* div#mask{
        display: none;
        background-color:rgba(200, 200, 200, 0.5);
    } */
    div.up{
        display: block !important;
        background-color:rgba(200, 200, 200, 0.5);
    }
    div#supermask{
        z-index: 999;
        top: 0;left: 0;
    }
        /* 小图部分 */
    div.sm{
        margin-top: 20px;
    }
    div.sm>a{
        display: inline-block;
        width:34px;height:32px;
        margin-top: 12px;
        opacity: 0.8;
    }
    div.sm>a:hover{
        opacity: 1;
    }
    div.sm>a.icon-l{
        background: url('../../public/img/icon/icon-left.png') no-repeat;
    }
    div.sm>a.icon-r{
        background: url('../../public/img/icon/icon-right.png') no-repeat;
    }
    div.sm div{
        width: 370px;
        overflow: hidden;
    }
    div.sm ul{
        list-style:none;
        display: flex;
        justify-content: left;
        /* width: 370px; */
        margin:0;
    }
    /* div.sm ul li{
        width: 74px;
    } */
    div.sm ul li a{
        display: inline-block;
        width: 74px;
    }
     div.sm ul li a:hover{
         border: 1px solid red;
     }
    div.sm ul li a img{
        width: 64px;
    }
    /* 右侧 */
    div.detail>div.right{
        width:730px;
        height:600px;
        background-color:#fff;
    }
    div.right{
        padding-left: 30px;
    }
    div.right a{
        text-decoration: none;
    }
    div.right>h4{
        text-align: left;
    }

    .d2,.d3,.d4,.d5,.d6,.d7{
        font-size: 12px;
    }

        /* d1 */
    div.right>div.d1{
        font-size:14px;
    }
        /* d2 */
    div.right>div.d2{
        background-color: #f5f5f5;
        height:175px;
        padding-top: 10px;
        font-size: 12px;
    }
    div.right label{
        width: 100px;
        height:36px;
        margin: 0;
        line-height: 40px;
    }
    div.d2>div:first-child>div{
        font-size: 24px;
        color: red;
    }
    div.d2>div:first-child>div>span:first-child{
        font-size: 18px;
    }
    div.d2>div:first-child>div>span:last-child{
        color:#666;
        font-size: 18px;
        text-decoration: line-through;
        margin-left:10px;
    }
    div.d2 ul{
        margin-top: 10px;
    }
    div.d2 ul li{
        height: 30px;
    }
    div.d2 ul li span:first-child{
        display: inline-block;
        width: 62px;height:20px;
        border:1px solid red;
        color: red;
        margin-right: 10px;
    }
    /* d3 */
    div.d3>img{
        width: 20px;height: 20px;
        margin-top: 10px;
    }
    div.d3>span{
        line-height: 40px;
    }
    /* d4 ,d5*/
    div.d4 ul,div.d5 ul{
        line-height: 40px;
        margin-bottom: 0;
    }
    div.d4 ul li+li,div.d5 ul li+li{
        margin-left: 10px;
    }
     div.d4 a.active{
        border:1px solid red;
    }
    /* d6 */
    div.d4 a,div.d6 a,.d5 a{
        display: inline-block;
        /* width: 170px;height: 30px; */
        border:1px solid #aaa;
        line-height: 30px;
        padding: 0 10px;
    }
   
    div.d6 a+a{
         margin-left: 10px;
    }
    /* d7 */
    div.d7 p{
        margin: 0;
        line-height: 36px;
        color:red;
        padding-left: 10px;
    }
    /* d8 */
    div.d8>div{
        height:44px;
        padding-left: 21px;
    }
    div.d8 input{
        width: 42px;
        /* border-right: 0; */
        outline: 0;
        text-align: center;
    }
    div.d8>div:first-child a{
        display: block;
        width: 21px;height:22px;
        border: 1px solid #aaa;
        color: #666;
        font-weight: bold;
        border-left:none;
        text-decoration: none;
    }
    div.d8>div:last-child>a{
        display: inline-block;
        width: 172px;height:46px;
        border: 1px solid #aaa;
        line-height: 46px;
        color:#fff;
        font-size: 18px;
        background-color: #fc600c;
        border-radius: 3px;
    }
    div.d8>div:last-child>a:last-child{
        margin-left: 10px;
        background-color: #ca151d;
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

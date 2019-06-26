<template>
    <section class="position-relative">
        <login :class="loginStyle" :loginStyle='loginStyle'></login>
        <!-- 轮播图 -->
        <div class="banner container-fluid position-relative">
            <div v-for="(img,index) in bannerList" v-show="index==mark"  :key='index'>
                <a href="JavaScript:;">
                    <img :src="img" alt="">
                </a> 
                     <!--左右两个按钮  -->
                <a href="JavaScript:;" class="prev d-block" @click="prev"></a>
                <a href="JavaScript:;" class="next d-block" @click='next'></a>
            </div>
            <!-- 导航小按钮 -->
            <div class="bar text-center" >
                <span v-for='(item,index) of bannerList' :class="{'active':index==mark}" :key='index' @click='change(index)'></span>
            </div>
            <!-- 下部弧形背景轮廓 -->
            <div>
                 <img class="img1" src="img/bg/bg-slide.png" alt="" >
            </div>
        </div>
        <!-- 左侧导航栏 -->
        <div class='nav container-fluid   '>
            <div>
                <ul class="list-unstyled position-relative">
                    <li>
                        <p>手机&平板</p>
                        <ul class="list-unstyled d-flex justify-content-around flex-nowarp">
                            <li>手环</li>
                            <li>手环</li>
                            <li>手环</li>
                        </ul>
                        <navS :count='2'></navS>
                    </li>
                    <li>
                        <p>手机&平板</p>
                        <ul class="list-unstyled d-flex justify-content-around flex-nowarp">
                            <li>手环</li>
                            <li>手环</li>
                            <li>手环</li>
                        </ul>
                        <navS :count='3'></navS>
                    </li>
                    <li>
                        <p>手机&平板</p>
                        <ul class="list-unstyled d-flex justify-content-around flex-nowarp">
                            <li>手环</li>
                            <li>手环</li>
                            <li>手环</li>
                        </ul>
                        <navS></navS>
                    </li>
                    <li>
                        <p>手机&平板</p>
                        <ul class="list-unstyled d-flex justify-content-around flex-nowarp">
                            <li>手环</li>
                            <li>手环</li>
                            <li>手环</li>
                        </ul>
                        <navS :count='1'></navS>
                    </li>
                    <li>
                        <p>手机&平板</p>
                        <ul class="list-unstyled d-flex justify-content-around flex-nowarp">
                            <li>手环</li>
                            <li>手环</li>
                            <li>手环</li>
                        </ul>
                        <navS :count='2'></navS>
                    </li>
                    <li>
                        <p>手机&平板</p>
                        <ul class="list-unstyled d-flex justify-content-around flex-nowarp">
                            <li>手环</li>
                            <li>手环</li>
                            <li>手环</li>
                        </ul>
                        <navS :count='2' :proTab1='proTab1'></navS>
                    </li>
                </ul> 
            </div> 
        </div>
        <!-- 轮播图下方 副导航 -->
        <div class="subnav container-fluid">
            <div class=''>
                <ul>
                    <li class='l1 d-flex'>
                        <img style="width:52px;height:52px;" src="img/misc/img_not_logged_in.png" alt="">
                        <div class="ml-2s">
                            <p>
                                您好!&nbsp; 请
                                <a href="JavaScript:;" @click="login">登录</a> &nbsp;/&nbsp;
                                <a href="JavaScript:;">注册</a>
                            </p>
                            <p>
                                <a href="#">新人福利</a>
                                <a href="#">会员频道</a>
                            </p> 
                        </div>
                    </li>
                    <li class="l2">
                        <ul >    
                            <li>
                                <a href="JavaScript:;">
                                    <div style="background-position:-13px -15px;"></div>
                                    <span>企业惠特购</span>
                                </a>
                            </li>
                            <li>
                                <a href="JavaScript:;">
                                     <div style="background-position:-95px -15px;"></div>
                                    <span>企业惠特购</span>
                                </a>
                            </li>
                            <li>
                                <a href="JavaScript:;">
                                    <div style="background-position:-175px -15px;"></div>
                                    <span>企业惠特购</span>
                                </a>
                            </li>
                            <li>
                                <a href="JavaScript:;">
                                    <div style="background-position:-255px -15px;border-radius:0;"></div>
                                    <span>企业惠特购</span>
                                </a>
                            </li>
                            <li>
                                <a href="JavaScript:;">
                                    <div class="d1" style="background-position:-335px -15px;"></div>
                                    <span>企业惠特购</span>
                                </a>
                            </li>
                            <li>
                                <a href="JavaScript:;">
                                    <div style="background-position:-415px -15px;"></div>
                                    <span>企业惠特购</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="l3">
                        <div style="border-bottom:1px solid #ddd;">
                            <span>公告</span>&nbsp;
                            <a href="#">荣耀 母情节活动</a>
                        </div>
                        <div class="d-flex justify-content-around pl-2">
                            <a href="#">
                                <span style="background-position:-487px -5px;"></span>
                                <span>优购码</span>
                            </a>
                            <a href="#">
                                <span style="background-position:-524px -5px;"></span>
                                <span>实名认证</span>
                            </a>
                            <a href="#">
                                <span style="background-position:-565px -5px;"></span>
                                <span>保障权利</span>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 中心商品内容 main -->
        <div class="main container-fluid">
            <!-- main-top 的四个商品 -->
            <div class="main-top d-flex justify-content-around">
                <a href="JavaScript:;">
                    <img src="img/pimages/pages/adsImages/main-top1.jpg" alt="">
                </a>
                 <a href="JavaScript:;">
                    <img src="img/pimages/pages/adsImages/main-top1.jpg" alt="">
                </a>
                 <a href="JavaScript:;">
                    <img src="img/pimages/pages/adsImages/main-top1.jpg" alt="">
                </a>
                 <a href="JavaScript:;">
                    <img src="img/pimages/pages/adsImages/main-top1.jpg" alt="">
                </a>
            </div>
            <!-- 一层 热销单品 main-hot -->
            <div class="hot">
                <proTab  :proTab='proHot'></proTab>
            </div>
            <!-- 二层 精品推荐 main-reco -->
            <div class="main-reco">
                <proTab :floors='1'  :proTab='proReco' :list='list.reco'></proTab>
            </div>
            <!-- 内容区的次要轮播图 main-banner -->
            <div class="main-banner">
                <div v-for='(img,i) of subBannerList' :key='i' v-show='i==subMark'>
                    <a href="JavaScript:;">
                        <img :src="img" alt="">
                    </a>
                </div>
                <!-- 小按钮 -->
                <div class="subbar text-right pr-4">
                    <span v-for="(item,i) of subBannerList" :key="i" :class="{'active':i==subMark}" class="d-inline-block"></span>
                </div>
            </div>
            <!-- 三层 手机  main-phone -->
            <div class="main-phone">
                <proTab :floors='1' :proTab='proTab1' :list='list.phone'></proTab>
            </div>
            <!-- 四层 笔记本电脑 main-laptop -->
            <div class="main-laptop">
                <proTab :floors='1' :proTab='proTab2' :list='list.laptop'></proTab>
            </div>
        </div>
    </section>
</template>

<script>
// ****引入nav-s组件
import navS from './common/navS'
//*****引入商品楼层 proTab组件 */
import proTab from './common/proTab'
//引入登录组件Login
import Login from './common/login.vue';

import { type } from 'os';
export default {
    data(){
        return {
            mark:0,
            subMark:0,
            bannerList:['img/pimages/pages/adsImages/banner6.jpg','img/pimages/pages/adsImages/banner3.jpg','img/pimages/pages/adsImages/banner1.jpg','img/pimages/pages/adsImages/banner2.jpg','img/pimages/pages/adsImages/banner4.jpg','img/pimages/pages/adsImages/banner5.jpg'],
            subBannerList:['img/pimages/pages/adsImages/subbanner1.png','img/pimages/pages/adsImages/subbanner2.png','img/pimages/pages/adsImages/subbanner3.jpg'],
            proHot:{type:'热销单品'},
            proReco:{type:'精品推荐'},
            proTab1:{type:'手机',ps:['HUAWEI Mate系列','荣耀','HUAWEI P系列','荣耀畅玩系列','HUAWEI nova系列']},
            proTab2:{type:'笔记本电脑',ps:['平板电脑','笔记本电脑','笔记本配件']},
            //proTab1:['吃饭','睡觉']
            list:{
                product:[{pid:'',tid:'',pname:'',title:'',price:0,color:'',spec:'',position:''}],

                hot:[{pid:'',tid:'',pname:'',title:'',price:0,color:'',spec:'',position:''}],

                reco:[{pid:'',tid:'',pname:'',title:'',price:0,color:'',spec:'',position:''}],

                phone:[{pid:'',tid:'',pname:'',title:'',price:0,color:'',spec:'',   position:''}],

                laptop:[{pid:'',tid:'',pname:'',title:'',price:0,color:'',spec:'',position:''}]
            },
            loginStyle:{
                uldown:true
            }
        }
    },
    created(){
        //console.log('打桩1');
        this.play();
        //创建url
            var url='http://127.0.0.1:3000/pro/index';
            //创建参数对象
            var obj={pid:''}
            this.axios.get(url,{params:obj})
            .then(result=>{  
                this.list.hot=result.data.hot;
                this.list.reco=result.data.reco;
                this.list.phone=result.data.phone;
                this.list.laptop=result.data.laptop;
                this.list.product=result.data.product;
                console.log(result.data);
            })
    },
    methods:{
        autoplay(){
            //console.log(this.mark)
            //console.log(this.subMark);
            this.mark++;
            this.subMark++;
            if (this.mark==6){
                this.mark=0
            };
            if(this.subMark==3){
                this.subMark=0
            }
        },
        play(){
            setInterval(this.autoplay,3000)
        },
        change(index){ //点击小按钮,跳到对应index图片,index传参过来
            this.mark=index;
        },
        prev(){
            this.mark--;
            // console.log(this.mark)
            if(this.mark==-1){
                this.mark=5
            };
            
            // console.log(this.mark)
        },
        next(){
            this.mark++;
            if (this.mark==6){
                this.mark=0
            }
        },
        login(){
            this.loginStyle.uldown=false;           
            //console.log(this.loginState)
        }

    },
    components:{
       navS,
       proTab,
       Login
    }
}
</script>

<style scoped>
    @import '../assets/index.css';
   /***中心内容 main部分 */
    /* main的顶部 main-top */
    div.main{
        margin-top: -100px;
    }
    div.main>div{
        width: 1200px;
        margin: 0 auto;
    }
    div.main>div.main-top>a{
        display: block;
        width: 290px;height:200px;
        border-radius: 10px;

    }
    div.main>div.main-top>a>img{
        /* display: block;
        width: 290px;height:200PX; */
        border-radius: 10px;

    }
    div.main>div.main-top>a:hover{
         box-shadow: 0 10px 20px rgba(0,0,255,0.5);
         transition: all 0.5s;
    }
    /***副轮播图 main-banner */
    div.main-banner>div img{
        border-radius: 10px;
    }
    div.main-banner>div.subbar{
        margin-top:-20px;
    }
    div.main-banner>div.subbar>span{
        width: 15px;height: 15px;
        margin:0 5px 0 5px;
        border:1px solid #fff;
        border-radius: 50%;
    }
    div.subbar>span.active{
        background: #fff;
    }
</style>
<template>
   <header>
        <!-- 整体分为三部分 上top  中sec 下bt-->
        <!-- 项目整体不采用响应式-->
            <!-- header 顶部 header-top-->
        <div class="header-top container-fluid" ref="top_img">
            <login :class="loginStyle" :loginStyle='loginStyle' @func="getMsgFromSon"></login>
            <register :class="registerStyle" :registerStyle='registerStyle' ></register>
            <p class="position-relative">
                <a href="javascript:;" class="d-block" >
                    <img class="" src="img/pimages/pages/adsImages/nW64qN94RbwqbGhDjPY0.jpg" alt=""/>
                </a>
                <a href="JavaScript:;" @click="close" title="关闭" class="d-block position-absolute ">
                    <!--<img class="w-100" src="./res.vmallres.com/20190430/images/echannel/icon-common.png" alt=""/>-->
                </a>
            </p>
        </div>
         <!-- header 中部 header-sec-->
        <div class="header-sec container-fluid">
            <div class="position-relative">
                <!-- 分成左右两个部分,两个ul列表横向排列-->
                <ul class="sec-left list-unstyled ">
                    <li>
                        <router-link to="/" >首页</router-link>
                    </li>
                    <li>
                        <router-link to="/products" target='_blank'>华为官网</router-link> 
                    </li>
                    <li>
                         <router-link to="/products" target='_blank'>荣耀官网</router-link> 
                    </li>
                    <li>
                        <router-link to="/service" target="_blank">花粉俱乐部</router-link>
                    </li>
                    <li>
                        <router-link to="/service" target="_blank">V码(优购码)</router-link>
                      
                    </li>
                    <li>
                        <router-link to="/service" target="_blank">企业购</router-link>
                       
                    </li>
                    <li>
                        <router-link to="/service" target="_blank">Select Region</router-link>
                    </li>
                    <li class="down" @mouseenter='down1' @mouseleave='up' >
                        <a href="javascript:;" class="text-center">更多精彩</a>
                        <span :class='spanDown1'></span>
                        <ul class="down1 position-absolute list-unstyled text-center" :class="ulDown1">
                            <li>

                                <a href="JavaScript:;">EMUI</a>
                            </li>
                            <li>

                                <a href="JavaScript:;">应用市场</a>
                            </li>
                            <li>

                                <a href="JavaScript:;">华为终端云空间</a>
                            </li>
                            <li>

                                <a href="JavaScript:;">开发者联盟</a>
                            </li>
                        </ul>
                    </li>
                </ul>

                <ul class="sec-right list-unstyled ">
                    <li>
                        <a href="JavaScript:;" @click="login" v-show="uname==''" >请登录</a>
                        &nbsp;
                        <a href="JavaScript:;" @click="register" v-show="uname==''">注册</a>
                        <a href="JavaScript:;" v-show="uname!==''">欢迎:{{uname}}</a>
                        <a href="javaScript:;" v-show="uname!==''" class="ml-2" @click="layout">退出登录</a>
                    </li>
                    
                    <li>

                        <a href="JavaScript:;">我的订单</a>
                    </li>
                    <li class="down" @mouseenter='down2' @mouseleave='up'>
                        <router-link to="/service" target="_blank">客户服务</router-link>
                        <span :class='spanDown2'></span>
                        <ul class="down2 position-absolute list-unstyled text-center" :class='ulDown2'>
                            <li>
                                <a href="JavaScript:;" @click="service">服务中心</a>
                            </li>
                            <li>
                                <a href="JavaScript:;" @click="service">联系客服</a>
                            </li>
                        </ul>
                    </li>
                    <li class='wzdh'>
                        <a href="JavaScript:;">网站导航
                        </a>
                        <span></span>
                        <ul class='down3 position-absolute list-unstyled d-flex '>
                            <li class='text-center'>
                                <a href='JavaScript:;'>
                                    <img src="img/misc/img_not_logged_in.png" alt="">
                                </a>
                                <p>商城首页</p>
                            </li>
                            <li>
                                <p >频道</p>
                                <a href="JavaScript:;">华为专区</a>
                                <a href="JavaScript:;">荣耀专区</a>
                                <a href="JavaScript:;">企业购</a>
                            </li>
                            <li>
                                <p>产品</p>
                                <a href="JavaScript:;">手机</a>
                                <a href="JavaScript:;">智能家居</a>
                                <a href="JavaScript:;">平板&笔记本</a>
                                <a href="JavaScript:;">通用配件</a>
                                <a href="JavaScript:;">智能穿戴</a>
                                <a href="JavaScript:;">专属配件</a>
                            </li>
                            <li>
                                <p>增值服务</p>
                                <a href="JavaScript:;">以旧换新</a>
                                <a href="JavaScript:;">礼品包装</a>
                                <a href="JavaScript:;">补购保障</a>
                                <a href="JavaScript:;">一口价换电池</a>
                            </li>
                            <li>
                                <p>会员</p>
                                 <a href="JavaScript:;">会员频道</a>
                            </li>
                        </ul>
                    </li>
                    <li>

                        <a href="JavaScript:;">手机版</a>
                    </li>
                    <li>

                        <a href="JavaScript:;" @click="goCart">购物车</a>
                    </li>
                </ul>

            </div>
            <!--<p></p>-->
        </div>
        <!-- header  底部 header-bt-->
        <div class="header-bt">
            <!--<div>-->
                <!-- logo-->
            <div></div>
                <div class="bt-logo">
                    <router-link to="/" target="_self">
                        <img class="" src="img/pimages/common/config/logo/SXppnESYv4K11DBxDFc2.png" alt=""/>
                    </router-link>
                </div>
                <!-- 导航-->
                <div class="bt-nav">
                    <ul class="list-unstyled d-flex flex-nowrap m-0">
                        <li class="text-center">
                           <router-link to="/products" target='_blank'>华为专区</router-link> 
                        </li>
                        <li class="text-center">
                            <router-link to="/products" target='_blank'>荣耀专区</router-link> 
                        </li>
                        <li>
                            <router-link to="/products" target='_blank'>华为P30</router-link> 
                        </li>
                        <li>
                            <router-link to="/details/1" target='_blank'>荣耀20i</router-link> 
                        </li>
                        <li>
                            <router-link to="/products" target='_blank'>Mate20系列</router-link> 
                        </li>
                        <li>
                            <router-link to="/details/1" target='_blank'>荣耀V20</router-link> 
                            
                        </li>
                    </ul>
                </div>
                <!-- 搜索框-->
                <div class="bt-search">
                    <div>
                        <input type="text" placeholder="HUAWEI P30 荣耀20i"/>
                        <span class="search" @click='search'></span>
                    </div>
                </div>
            <!--</div>-->
        </div>
    </header>
</template>

<script>
//引入登录组件Login
import Login from './common/login.vue';
//引入注册组件Register
import Register from './common/register.vue';
export default {
    data(){
        return {
            ulDown1:{
                uldown:true   
            },
            ulDown2:{
                uldown:true
            },
            spanDown1:{
                spanUp:false
            },
            spanDown2:{
                spanUp:false
            },
            loginStyle:{
                uldown:true
            },
            registerStyle:{
                uldown:true
            },
            uname:''
        }
    },
    methods: {
        down1(){
            this.ulDown1.uldown=false;
            this.spanDown1.spanUp=true;
        },
        down2(){
            this.ulDown2.uldown=false;
            this.spanDown2.spanUp=true;
        },
        up(){
            this.ulDown1.uldown=true;
            this.ulDown2.uldown=true;
            this.spanDown1.spanUp=false;
             this.spanDown2.spanUp=false;
        },
        search(){
            this.$router.push('/products')
        },
        close(){
            this.$refs.top_img.style.display='none';
        },
        toIndex(){
            this.$router.push('/')
        },
        login(){
            //如果当前的注册窗口打开着,那么关闭它
            if(this.registerStyle.uldown==false){
                this.registerStyle.uldown=true;
            }
            //打开登录窗口
            this.loginStyle.uldown=false;           
            //console.log(this.loginState)
        },
        register(){
            //如果当前的登录窗口打开着,那么关闭它
            if(this.loginStyle.uldown==false){
                this.loginStyle.uldown=true;
            }
            //打开注册窗口
            this.registerStyle.uldown=false;           
            //console.log(this.loginState)
        },
        service(){
            this.$router.push('/service')
        },
        onload(){
            if(sessionStorage.uname){//判断  如果session有用户信息
                this.uname=sessionStorage.uname;  //将用户信息保存到data中
                console.log(sessionStorage);
            }else{this.uname=''}   //否则 data中uanme为空字符串
            
            
            //请求回uname
            // this.axios.get("http://127.0.0.1:3000/pro/user",{params:''}).then(result=>{
            //     console.log(result);
            //     if(result.data.length!==0){
            //         this.uname=result.data[0].uname;
            //     }else{
            //         this.name=''
            //     }
                
            //     console.log(this.uname);

            // }
            // )
        },
        getMsgFromSon(data){
          //  sessionStorage.uname=data; //客户端页面中sessionStorage加入uname为子组件传回的值 
           // this.uname=sessionStorage.uname; //获取session中uname
        },
        //用户退出登录
        layout(){
            console.log('退出打桩');
            this.axios.get('http://127.0.0.1:3000/pro/layout',{params:''}).then(result=>{
                console.log(result)
            });
            sessionStorage.removeItem('uid');
            sessionStorage.removeItem('uname');
            location.reload();
        },
        //进入购物车事件
        goCart(){
            var uid=sessionStorage.uid;
            if(uid){
                this.$router.push('/cart');
            }else{
                alert("请先登录")
            }
        }
    },
    components:{
       Login,
       Register
    },
    created(){
        this.onload();
    }
   
}
</script>

<style scoped>
 @import '../assets/my-header.css';
</style>
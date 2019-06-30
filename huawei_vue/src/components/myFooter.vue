<template>
    <footer> 
        <div class="footer container-fluid">
            <!--脚顶部 footer-top  -->
            <div class="footer-top">
                <ul class="d-flex list-unstyled justify-content-between m-0">
                    <li>
                        <a href="JavaScrip:;">
                            <span class="bg-danger"></span>
                            <span>百年企业 品质保证</span>
                        </a>
                    </li>
                    <li>
                        <a href="JavaScrip:;">
                            <span></span>
                            <span>百年企业 品质保证</span>
                        </a>
                    </li>
                    <li>
                        <a href="JavaScrip:;">
                            <span></span>
                            <span>百年企业 品质保证</span>
                        </a>
                    </li>
                    <li>
                        <a href="JavaScrip:;">
                            <span></span>
                            <span>百年企业 品质保证</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div style="height:10px;" class="ge mt-2 mb-4"></div>
            <!-- 脚中间 footer-main -->
            <div class="footer-main d-flex justify-content-between">
                <ul>
                    <li><h6>维修与技术支持</h6></li>
                    <li>
                        <ul>
                            <li>购物指南</li>
                            <li>购物指南</li>
                            <li>支付方式</li>
                            <li>常见问题</li>
                        </ul>
                    </li>
                </ul>       
                <ul>
                    <li><h6>维修与技术支持</h6></li>
                    <li>
                        <ul>
                            <li>购物指南</li>
                            <li>购物指南</li>
                            <li>支付方式</li>
                            <li>常见问题</li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><h6>维修与技术支持</h6></li>
                    <li>
                        <ul>
                            <li>购物指南</li>
                            <li>购物指南</li>
                            <li>支付方式</li>
                            <li>常见问题</li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><h6>维修与技术支持</h6></li>
                    <li>
                        <ul>
                            <li>购物指南</li>
                            <li>购物指南</li>
                            <li>支付方式</li>
                            <li>常见问题</li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><h6>维修与技术支持</h6></li>
                    <li>
                        <ul>
                            <li>购物指南</li>
                            <li>购物指南</li>
                            <li>支付方式</li>
                            <li>常见问题</li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><h6>维修与技术支持</h6></li>
                    <li>
                        <ul>
                            <li>购物指南</li>
                            <li>购物指南</li>
                            <li>支付方式</li>
                            <li>常见问题</li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li><h6>400-088-6888</h6></li>
                    <li>
                       <p>7x24小时客服热线（仅收市话费）</p>
                    </li>
                    <li>
                        <a href="#">
                            <span></span>
                            <span>在线客服</span>
                        </a>
                    </li>
                    <li>
                        <span>关注Vmall:</span>
                        <a href="#">
                            <img src="" alt="">
                        </a>
                        <a href="#">
                            <img src="" alt="">
                        </a>
                        <a href="#">
                            <img src="" alt="">
                        </a>
                        <a href="#">
                            <img src="" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <div style="height:10px;" class="ge mt-2 mb-4"></div>
            <!-- 脚底部 footer-bottom -->
            <div class="footer-bottom">
                <div>
                    <p>
                        华为集团|华为CBG官网|荣耀官网|花粉俱乐部|华为应用市场|EMUI|华为终端云空间|开发者联盟|华为商城手机版|网站地图
                    </p>
                    <p>
                        隐私声明|服务协议| COOKIES Copyright © 2012-2019 华为终端有限公司 版权所有 粤ICP备19015064号-4| 备案主体编号：32201911426827
                    </p>
                </div>
                <p></p>
            </div>
        </div>
    </footer>
</template>

<script>
export default {
    data(){
        return {}
    }
}
</script>

<style scoped>
    div.footer{
        background-color:#f5f5f5;
    }
    div.footer a{
        text-decoration: none;
        color:#444;
    }
    div.footer>div{
        width:1200px;
        margin: 0 auto;
    }
    /*footer-top  */
    div.footer-top ul li a{
        display: flex;
        vertical-align: middle;
    }
    div.footer-top ul li>a>span:first-child{
         display: inline-block;
        height:50px;width: 50px;
        border-radius: 50%;
        background-image: url('../../public/img/icon/icon2.png');
        /* background-color: #f5f5f5; */
        background-position: -93px -1px;
    }
     div.footer-top ul li span:last-child{
        display: inline-block;
        height:50px;
        line-height: 50px;
        margin-left: 20px;
    }
    /* ge */
    div.ge{
        border-bottom:1px solid #ccc; 
    }
    /* footer-main */
    div.footer-main ul{
        list-style: none;
        padding-left: 0;
    }
    div.footer-main>ul>li>ul{
        padding: 0;
    }
    div.footer-main>ul>li>ul>li{
        font-size: 12px;
        color:#666;
        text-align: left;
    }
    /* footer-bottom */
    div.footer-bottom{

    }
</style>

<template>
    <div>
        <div class="navS d-flex justify-content-between">
            <ul class="list-unstyled" v-for="c of count" :key="c">
                <li>
                    <div class="media">
                        <img style="width:50px;" src="img/1.jpg" alt="">
                        <div class="media-body">
                            华为牛逼
                        </div>
                    </div>
                </li>
                <li>
                    <div class="media">
                        <img style="width:50px;" src="img/1.jpg" alt="">
                        <div class="media-body">
                            华为牛逼
                        </div>
                    </div>
                </li>
                <li>
                    <div class="media">
                        <img style="width:50px;" src="img/1.jpg" alt="">
                        <div class="media-body">
                            华为牛逼
                        </div>
                    </div>
                </li>
                <li>
                    <div class="media">
                        <img style="width:50px;" src="img/1.jpg" alt="">
                        <div class="media-body">
                            华为牛逼
                        </div>
                    </div>
                </li>
            </ul>  
            <div class='border'>
                查看全部
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {}
    },
    props:{
        count:{default:1}
    }
}
</script>

<style scoped>
    div.navS{
        position: absolute;
        top:0;left: 200px;
        background: #fff;  
        border-bottom-right-radius: 10px;
        border-top-right-radius: 10px;
        z-index: 1000;
        display: none !important;
    }
    ul{
        width:200px;height:410px;
    }
    ul>li{
        margin-top: 12px;
        padding:20px 20px 20px 20px;
        border-radius: 10px;
    }
    ul>li:hover{
        background-color: #eee;
    }
    ul>li>div>div{
        text-align: left;
        line-height:46px;
        padding-left: 10px;
    }
    div.navS>div{
        width:150px;height:50px;
        margin-top: 35px;
        margin-right: 35px;
        padding:10px 20px 10px 20px;
        border-radius:70px;
        line-height:30px;
        text-align: center;
    }

    div.nav>div>ul>li:hover div.navS{
        display: flex !important;
        /* background-color: red; */
    }
</style>

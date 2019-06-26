<template>
    <div>   
        <div class="proTab container-fluid p-0 mt-4"> 
            <div class="d-flex position-relative">
                <h2 class="p-0">{{proTab.type}}</h2>
                <a v-for="(p,index) of proTab.ps" :key="index" href="JavaScript:;">{{p}}</a>
                <a href="#" @click="chakan">查看更多 &gt;</a>
            </div>  
            <ul class="tab1 list-unstyled d-flex justify-content-around">    
                <li>
                    <router-link to="/details/1" target="_blank">
                        <img src="img/pimages/proTab/1.jpg" alt="">
                    </router-link>
                </li>
                <li>
                    <router-link to="/details/2" target="_blank">
                        <div>
                            <img src="img/pimages/proTab/2.png" alt="">
                        </div>
                        <h5>华为畅享9</h5>
                        <p>32G领券减100</p>
                        <h6>¥999</h6>
                    </router-link>
                </li>
                <li>
                    <router-link to="/details/3" target="_blank">
                       <div>
                            <img src="img/pimages/proTab/3.png" alt="">
                        </div>
                        <h5>华为畅享9</h5>
                        <p>32G领券减100</p>
                        <h6>¥999</h6>
                    </router-link>
                </li>
                <li>
                    <router-link to="/details/4" target="_blank">
                       <div>
                            <img src="img/pimages/proTab/4.png" alt="">
                        </div>
                        <h5>华为畅享9</h5>
                        <p>32G领券减100</p>
                        <h6>¥999</h6>
                    </router-link>
                </li>
                <li>
                    <router-link to="/details/5" target="_blank">
                        <div>
                            <img src="img/pimages/proTab/5.png" alt="">
                        </div>
                        <h5>华为畅享9</h5>
                        <p>32G领券减100</p>
                        <h6>¥999</h6>
                    </router-link>
                </li>
            </ul>
            <ul v-for="(floor,index) of floors" :key="index" class="list-unstyled d-flex justify-content-around flex-wrap">
                <li v-for="(item,index) of list" :key='index' >
                    <router-link :to="`/details/${item.pid}`" target='_blank' >
                        <div>
                            <img :src="item.show_img" alt="">
                        </div>
                        <h5>{{item.pname}}</h5>
                        <p>32G领券减100</p>
                        <h6>¥{{item.price}}</h6>
                    </router-link>
                </li>
                <!-- <li>
                    <a href="JavaScript:;">
                        <div>
                            <img src="img/pimages/proTab/6.png" alt="">
                        </div>
                        <h5>华为畅享9</h5>
                        <p>32G领券减100</p>
                        <h6>¥999</h6>
                    </a>
                </li>
                <li>
                    <a href="JavaScript:;">
                        <div>
                            <img src="img/pimages/proTab/7.png" alt="">
                        </div>
                        <h5>华为畅享9</h5>
                        <p>32G领券减100</p>
                        <h6>¥999</h6>
                    </a>
                </li>
                <li>
                    <a href="JavaScript:;">
                       <div>
                            <img src="img/pimages/proTab/8.png" alt="">
                        </div>
                        <h5>华为畅享9</h5>
                        <p>32G领券减100</p>
                        <h6>¥999</h6>
                    </a>
                </li>
                <li>
                    <a href="JavaScript:;">
                       <div>
                            <img src="img/pimages/proTab/9.png" alt="">
                        </div>
                        <h5>华为畅享9</h5>
                        <p>32G领券减100</p>
                        <h6>¥999</h6>
                    </a>
                </li>
                <li>
                    <a href="JavaScript:;">
                        <div>
                            <img src="img/pimages/proTab/10.png" alt="">
                        </div>
                        <h5>华为畅享9</h5>
                        <p>32G领券减100</p>
                        <h6>¥999</h6>
                    </a>
                </li> -->
            </ul>
        </div>
    </div>
</template>

<script>

export default {
    data(){
        return {
            name:'dyg',
            product:[],
            type:[],
        }
    },
    props:{
        floors:{default:0},
        proTab:{default:''},
        list:{default:''}
    },
    
    methods:{
        chakan(){
            // console.log(this.floors)
        },
        // toDetail(){
        //     console.log('跳转详情打桩');
            // //创建url
            // var url='http://127.0.0.1:3000/pro/ceshi';
            // //创建参数对象
            // var obj={pid:2}
            // this.axios.get(url,{params:obj})
            // .then(result=>{
                
            //     this.product=result.data.product;
            //     this.type=result.data.type;
            //    // console.log(typeof(this.product),this.type);
            //     //console.log(this.product[0].price,this.type[0])
            // })
    //     }
    },
    created(){
        //  //创建url
        //     var url='http://127.0.0.1:3000/pro/ceshi';
        //     //创建参数对象
        //     var obj={pid:2}
        //     this.axios.get(url,{params:obj})
        //     .then(result=>{
                
        //         this.product=result.data.product;
        //         this.type=result.data.type;
        //        // console.log(typeof(this.product),this.type);
        //         console.log(this.product[0].price,this.type[0])
        //     })
    },
}
//console.log(this.name);
</script>

<style scoped>
    div.proTab{
        margin-bottom: 2rem;
    }
    div.proTab>div{
        align-items: center;
        margin-bottom: 10px;
    }
    div.proTab>div>a{
        display: inline-block;
        margin-left: 20px;
        font-size: 14px;
        color:#666;
        text-decoration: none;
    }
     div.proTab>div>a:last-child{
         position: absolute;
         right: 0px;
     }
    div.proTab>div>a:hover{
        color:red;
    }
    div.proTab ul{
        margin: 0;
    }
    div.proTab ul>li{
        margin-top:1rem; 
    }
    div.proTab ul>li>a{
        display: inline-block;
        height:290px;
        background-color: #DBEDF1;
        border-radius: 10px;
        text-decoration: none;
    }
    div.proTab ul>li>a>div{
        margin-top: 35px;
        width:230px;height:150px;
    }
    div.proTab ul>li>a>div>img{
        width: 150px;
    }
     div.proTab ul>li>a>h5{
         font-size: 16px;
         color:#000;
         margin-top:20px;
     }
     div.proTab ul>li>a>p{
         font-size: 12px;
         color:#666;
     }
     div.proTab ul>li>a>h6{
         margin-top: -10px;
         color:red;
     }
     div.proTab ul>li>a:hover{
          box-shadow: 0 10px 20px rgba(0,0,0,0.5);
         transition: all 0.5s;
     }
</style>


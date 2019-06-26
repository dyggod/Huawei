<template>
    <div>
        <div id='register' >
            <!-- 分头中脚三部分 -->
            <div class="top">
                <a href="JavaScript:;" @click="close"></a>
            </div>
            <div class="main">
                <div class="m-d1">
                    <span>用户名</span>
                    <span>电子邮箱</span>
                </div>
                <div class="m-d2">
                    <div class="err">
                        <div :class="errMsg">
                        <span></span>
                        <span>用户名已被注册</span>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td>
                                <input class="w-100" type="text" placeholder="请输入用户名" name="uname" @blur="blurUname">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input class="w-100" type="password" placeholder="请输入密码" name="upwd">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <!-- <a class="float-left" style="font-size:12px;text-decoration:none;" href="JavaScript:;">短信验证码登录</a> -->
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button class=" w-100" @click="register">注册</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="d-flex justify-content-between">
                                <div style="font-size:12px;"><input type="checkbox">
                                记住华为账号</div>
                                <a href="JavaScript:;">更多</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="JavaScript:;">直接登录</a>
                                <!-- <a href="JavaScript;;">忘记密码?</a> -->
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="bottom">
                <div>
                    <i></i>
                    <span>其他方式注册</span>
                    <i></i>
                </div>
                <div class="d-flex justify-content-center">
                    <img src="img/icon/qq.png" alt="">
                    <img src="img/icon/wechat.png" alt="">
                    <img src="img/icon/zhifu.png" alt="">
                </div>
                <div>
                    继续访问即代表您已同意
                    <a href="#">华为商城服务协议</a>
                    和
                    <a href="#">华为隐私协议</a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props:["registerStyle"],
    data(){
        return {
            errMsg:{//错误提示消息的显示隐藏数据
                errMsg:true
            },
        }
    },
    methods:{
        // 关闭登录弹窗
        close(){
            this.registerStyle.uldown=true;
            //console.log(this.loginStyle);    
        },
        register(){
            //注册功能
            var url="http://127.0.0.1:3000/pro/register";
            var uname=document.getElementsByName('uname'); //获取输入框的值
            var upwd=document.getElementsByName('upwd'); //获取输入框的值
            var obj={uname:uname[1].value,upwd:upwd[1].value};
            console.log(obj);
            this.axios.get(url,{params:obj}).then(result=>{
                // console.log(result.data)
                if(result.data==200){  //如果服务器返回的值是200
                    alert("注册成功");
                    location.reload(); //刷新当前页面
                }
            })
        },
        blurUname(){
            //鼠标失去焦点时验证用户名
            var url="http://127.0.0.1:3000/pro/blurUname";
             var uname=document.getElementsByName('uname'); //获取输入框的值
             var obj={uname:uname[1].value};
             this.axios.get(url,{params:obj}).then(result=>{
                console.log(result.data);
                console.log(result.data);
                if(result.data==200){  //如果服务器返回的值是200
                    this.errMsg.errMsg=false;
                }else if(result.data==404){this.errMsg.errMsg=true}; //如果返回404  已注册提示消失
            })
        }
    }
}
</script>

<style scoped>
     /* 整体 */
    div#register{
        width:500px;height:635px;
        background-color: #fff;
        position: fixed;
        top: 145px;
        left:35%;
        z-index: 1001;
    }
    /* div.top */
    div.top{
        width: 100%;
        height:30px;
        background: #a51b1b;
    }
    div.top>a{
        display: inline-block;
        width:20px;height:20px;
        border-radius: 50%;
        background-image: url('../../../public/img/icon/icon1.png');
        background-position: -65px -45px;
        position: relative;
        right:-235px;top:4px;
    }
    /* div.main */
    div.main>div{
        width: 380px;
        margin: 0 auto;
    }
    div.main a{
        text-decoration: none;
        font-size: 14px;
    }
        /* m-d1 */
    div.main>div.m-d1{
        margin-top:30px;
    }
    div.main>div.m-d1 span{
        display: inline-block;
        width:190px;height:20px;
        font-size: 20px;
        line-height: 20px;
        color: #000;
        text-decoration: none;
        cursor: pointer; 
    }
    div.main>div.m-d1 span:hover{
        color:red;
    }
    div.main>div.m-d1 span:first-child{
        border-right:1px solid #bbb;
    }
        /* m-d2 */
            /* 错误提示 */
    div.main>div.m-d2>div.err{
        width:328px;
        height: 20px;
        margin:0 auto;
        margin-top: 20px;
        text-align: left;
        font-size: 12px;
        color:red;
    }
    div.main>div.m-d2>div.err>div>span:first-child{
        display: inline-block;
        width: 15px;height:20px;
        background-image: url('../../../public/img/icon/icon1.png');
        background-position: -260px -359px;
    }
    .errMsg{
        display: none;
    }
            /* 登录表 */
    div.main>div.m-d2 table{
        width: 328px;
        margin: 0 auto;
        margin-top: 0;
    }
    div.m-d2 table tr>td{
        height:46px;
    }
    div.m-d2 table tr input:not([type=checkbox]){
        border:0;
        outline: 0;
        font-size: 14px;
        border-bottom: 1px solid #ccc;
        color:#bbb;
    }
    div.m-d2 table tr button{
        height:44px;
        background-color: #a51b1b;
        color:#fff;
        border-radius: 20px;
        outline: 0;
        border: 0;
        font-size: 14px;
    }
    div.m-d2 table tr button:hover{
        background-color: #c11b1b;
    }
    div.m-d2 table tr:nth-child(5)>td{
        line-height: 46px;
    }
    div.m-d2 table tr:last-child>td a{
        display: inline-block;
        width: 74px;height: 14px;
        line-height: 14px;
    }
    /* div.m-d2 table tr:last-child>td a:first-child{
        border-right: 1px solid #bbb;
    } */
    /* d-bottom */
    div.bottom{
        margin-top: 5rem;
    }
    div.bottom>div{
         width: 380px;
        margin: 0 auto;
    }
    div.bottom>div:first-child{
        font-size: 14px;
        color: #bbb;
        margin-bottom: 15px;
    }
    div.bottom>div>i:first-child{
         margin-left: 30px;
        display: inline-block;
        width: 100px;height: 5px;
        background-image: url('../../../public/img/icon/thirdLine.png')
    }
    div.bottom>div>i:last-child{
        margin-left: 20px;
        display: inline-block;
        width: 100px;height: 5px;
        background-image: url('../../../public/img/icon/thirdLine2.png')
    }
    div.bottom>div>img{
        margin: 0 10px;
    }
    div.bottom>div:last-child{
        font-size: 12px;
        color: #666;
        margin-top: 30px;
    }
    div.bottom>div:last-child>a{
        text-decoration: underline;
    }
</style>

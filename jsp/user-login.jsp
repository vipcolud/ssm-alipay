<%@ page language="java"  contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
      <link rel="stylesheet" href="../static/css/footer.css">
      <link rel="stylesheet" href="../static/css/login.css">
      <link rel="stylesheet" href="../static/css/nav-simple.css">
     <link rel="stylesheet" href="../static/css/layout.css">
</head>
<script src="../static/js/jquery-1.7.2.js"></script>
<style type="text/css" >
.w{
    width: 1080px;
    margin: 0 auto;
    position: relative;
    overflow: hidden;
}
</style>
<body>
<div class="nav-simple">
    <div class="w">
        <a class="logo" href="/index.html">MMALL</a>
    </div>
</div>
<div class="page-wrap">
            <div class="w">
                <div class="user-con">
                    <div class="user-title">用户登录</div>
                    <div class="user-box">
                        <div class="error-item">
                            <i class="fa fa-minus-circle error-icon"></i>
                            <p class="err-msg">Error</p>
                        </div>
                        <div class="user-item">
                            <label class="user-label" for="">
                                <i class="fa fa-user"></i>
                            </label>
                            <input class="user-content" id="username" placeholder="请输入用户名" autocomplete="off">
                        </div>
                        <div class="user-item">
                            <label class="user-label" for="password">
                                <i class="fa fa-lock"></i>
                            </label>
                            <input type="password" class="user-content" id="password" placeholder="请输入密码" autocomplete="off">
                        </div>
                        <a class="btn btn-submit" id="submit" onclick="login();"   >登录</a>
                        <div class="link-item">
                            <a class="link" href="./user-pass-reset.html" target="_blank">忘记密码</a>
                            <a class="link" href="./user-register.html" target="_blank">免费注册</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<!--footer-->
<div class="footer">
    <div class="w">
        <div class="links">
            <a class="link" href="http://www.imooc.com" target="_blank">慕课网</a> |
            <a class="link" href="https://www.baidu.com" target="_blank">百度</a> |
            <a class="link" href="https://www.taobao.com" target="_blank">淘宝</a> |
            <a class="link" href="https://www.zhihu.com" target="_blank">知乎</a>
        </div>
        <p class="copyright">
            Copyright © 2017 happymmall.com All Right Reserved
        </p>
    </div>
</div>
<!--footer-->
</body>

<script type="text/javascript">
function login(){
	       var username = $("#username").val();
	       var password = $("#password").val();
	        //ajax去服务器端校验
            var data= {username:username,password:password};
	        $.ajax({
	             type:"POST",
                 url:"../user/login.do",
	             data:data,
	             dataType:'json',
                 success:function(msg){
                	 console.log(msg);
                	 if(msg.status="0"){
                		 location.href="../index.jsp";
                	 }
                 },
	             error:function(msg){
                 console.log(msg);
                 }
	         });
	 }    
</script>

</html>




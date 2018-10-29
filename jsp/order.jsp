<%@ page language="java"  contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>happymmall电商平台</title>
   <link rel="stylesheet" href="../static/css/nav.css">
    <link rel="stylesheet" href="../static/css/footer.css">
    <link rel="stylesheet" href="../static/css/header.css">
    <link rel="stylesheet" href="../static/css/order.css">
    <link rel="stylesheet" href="../static/css/layout.css">
    </head>
<style type="text/css" >

</style>
<body>
 <!--nav-->
<div class="nav">
    <div class="w">
        <div class="user-info">
            <span class="user not-login">
                <span class="link js-login" >登录</span>
                <span class="link js-register">注册</span>
            </span>
            <span class="user login">
                <span class="link-text">
                    欢迎，
                    <span class="username"></span>
                </span>
                <span class="link js-logout">退出</span>
            </span>
        </div>
        <ul class="nav-list">
            <li class="nav-item">
                <a class="link" href="./cart.html">
                    <i class="fa fa-shopping-cart"></i>
                    购物车(<span class="cart-count">0</span>)
                </a>
            </li>
            <li class="nav-item">
                <a class="link" href="./order-list.html">我的订单</a>
            </li>
            <li class="nav-item">
                <a class="link" href="./user-center.html">我的MMall</a>
            </li>
            <li class="nav-item">
                <a class="link" href="./about.html">关于MMall</a>
            </li>
        </ul>
    </div>
</div>
<!--nav-->
<!--header-->
<div class="header">
    <div class="w">
        <a class="logo" href="./index.html">MMall</a>
        <div class="search-con">
            <input class="search-input" id="search-input" placeholder="请输入商品名称"/>
            <button class="btn search-btn" id="search-btn">搜索</button>
        </div>
    </div>
</div>
<!--header-->
<div class="crumb">
            <div class="w">
                <div class="crumb-con">
                    <a class="link" href="./index.html">MMall</a>
                    <span>>订单支付</span>
                    <span class="link-text"></span>
                </div>
            </div>
</div>
<div class="pay-wrap w" id="order">
   
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
 <script src="../static/js/jquery-1.7.2.js"></script>
<script type="text/javascript">

var str=window.location.search;
var orderNo=str.substring(9,22);
 console.log(orderNo);
$(function(){
	$.ajax({
	     type:"POST",
	     url:"../order/pay.do",
	     data:{"orderNo":orderNo},
	      dataType:'json',
	     success:function(msg){
	    	 console.log(msg);
	    	 if(msg.status="0")
	    	 {
	    		 console.log(msg);
		     	  var orderhtml="";
		     	  orderhtml+=' <p class="pay-tips">订单提交成功，请您尽快支付！ 订单号：'+orderNo+'</p>';
		     	  orderhtml+='   <p class="pay-tips enhance">请使用支付宝扫描如下二维码进行支付：</p>';
		     	  orderhtml+=' <div class="img-con">';
		     	  orderhtml+='    <img class="qr-code" src="../'+msg.data.qrUrl+'">';
		     	  orderhtml+='         </div>';
	              $("#order").append(orderhtml);
	    		//
	    	}else{
	    		 location.href="../jsp/user-login.jsp";
	    	} 
	      },
	      error:function(msg){
	      console.log(msg);
	      }
	  });
	
});   
 
</script>
</html>




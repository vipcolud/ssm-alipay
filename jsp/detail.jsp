<%@ page language="java"  contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <link rel="stylesheet" href="../static/css/nav.css">
    <link rel="stylesheet" href="../static/css/footer.css">
    <link rel="stylesheet" href="../static/css/header.css">
    <link rel="stylesheet" href="../static/css/layout.css">
    <link rel="stylesheet" href="../static/css/detail.css">
</head>
<style type="text/css">
.crumb .crumb-item {
    color: #888;
    text-decoration: none;
    cursor: pointer;
}

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
                <div class="crumb-list">
                    <a href="./index.html" class="crumb-item">MMall</a>
                    <span>></span>
                    <span class="crumb-item">商品详情</span>
                </div>
            </div>
        </div>
        <div class="page-container w">
            <div class="intro-wrap clear" id="detail">
                

            </div>
         <div class="detail-wrap">
            <div class="detail-tab-con">
                <ul class="tab-list">
                    <li class="tab-item active">商品详情</li>
                </ul>
            </div>
            <div class="detail-con" id="datail-c">

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
<script src="../static/js/jquery-1.7.2.js"></script>
<script type="text/javascript">
        var str=window.location.search;
        var id=str.substring(4,6);
        $(function(){
        	$.ajax({
                type:"get",
                url:"../product/detail.do",
                data:{"productId":id},
                dataType:'json',
                success:function(msg){
               	 console.log(msg);
               	 var detailhtml="";
               		detailhtml+='<div class="p-img-wrap">';
               		detailhtml+='<div class="main-img-con">';
               		detailhtml+='    <img class="main-img" src="'+msg.data.mainImage+'" > </div>';
               		detailhtml+='   <ul class="p-img-list">';
               		detailhtml+='   <li class="p-img-item"><img  class="p-img" src="http://img.happymmall.com/570186f3-c0d2-4336-a1b7-3e1aff88f73a.jpg" ></li>';
               		detailhtml+='  <li class="p-img-item" ><img  class="p-img" src="http://img.happymmall.com/570186f3-c0d2-4336-a1b7-3e1aff88f73a.jpg" ></li>';
               		detailhtml+='  <li class="p-img-item"><img  class="p-img" src="http://img.happymmall.com/570186f3-c0d2-4336-a1b7-3e1aff88f73a.jpg" ></li>';
               		detailhtml+='      </ul></div>';
               		detailhtml+='    <div class="p-info-wrap">';
               		detailhtml+='     <p class="p-name">'+msg.data.name+' </p>';
               		detailhtml+='     <p class="p-subtitle">'+msg.data.subtitle+'</p>';
               		detailhtml+='      <div class="info-item p-price-con">';
               		detailhtml+='         <span class="label">价格：</span>';
               		detailhtml+='          <span class="p-price">'+msg.data.price+'</span>';
               		detailhtml+='       </div>';
               		detailhtml+='       <div class="info-item p-quantity-con">';
               		detailhtml+='          <span class="label">库存</span>';
               		detailhtml+='          <span class="p-price">'+msg.data.stock+'</span>';
               		detailhtml+='       </div>';
               		detailhtml+='       <div class="info-item">';
               		detailhtml+='          <span class="label">数量 </span>';
               		detailhtml+='            <input class="p-count" value="1" readonly="readonly">';
               		detailhtml+='            <span class="p-count-btn plus" data-opera-type="plus">+</span>';
               		detailhtml+='            <span class="p-count-btn minus" data-opera-type="mius">-</span>';
               		detailhtml+='         </div>';
               		detailhtml+='         <div class="info-item">';
               		detailhtml+='         <a class="btn cart-add" onclick="addcart();">加入购物车</a>';
               		detailhtml+='         </div>';
               		detailhtml+='   </div>';
               	  $("#detail").append(detailhtml);	
               	  $("#datail-c").append(msg.data.detail);
                },
                error:function(msg){
                console.log(msg);
                }
            });
        	
        }); 
function addcart(){ 
 	  	        $.ajax({
 	            type:"POST",
                 url:"../cart/add.do",
                 data:{"count":1,"productId":id},
 	             dataType:'json',
                 success:function(msg){
                 	 console.log(msg);
                 	 console.log(msg);
                 	 if(msg.status="0"){
                 		location.href="../jsp/cart.jsp";
                 	  
                 	 }else{
                 		 location.href="../jsp/user-login.jsp";
                 	 }
                  },
 	             error:function(msg){
                  console.log(msg);
                  }
 	         });
 	 }           
        
        
</script>
</html>




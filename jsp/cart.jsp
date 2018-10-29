<%@ page language="java"  contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>happymmall电商平台</title>
    <link rel="stylesheet" href="../static/css/nav.css">
    <link rel="stylesheet" href="../static/css/footer.css">
    <link rel="stylesheet" href="../static/css/header.css">
    <link rel="stylesheet" href="../static/css/cart.css">
    <link rel="stylesheet" href="../static/css/layout.css">
    </head>
<style type="text/css" >
#cart-table {
    width: 100%;
    padding-left: 20px;
}
#cart-footer{
    background: #eee;

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
                <div class="crumb-con">
                    <a class="link" href="./index.html">MMall</a>
                    <span>>我的购物车</span>
                    <span class="link-text"></span>
                </div>
            </div>
        </div>
        <div class="cart-wrap w"  >
         <div class="cart-header">
                <table calss="cart-table" id="cart-table">
                    <tbody>
                        <tr>
                            <th class="cart-cell cell-check">
                                <label>
                                <input type="checkbox" class="cart-select-all" checked="checked">
                                <span>全选</span>
                                </label>
                            </th>
                            <th class="cart-cell cell-info">商品信息</th>
                            <th class="cart-cell cell-price">单价</th>
                            <th class="cart-cell cell-count">数量</th>
                            <th class="cart-cell cell-total">合计</th>
                            <th class="cart-cell cell-opera">操作</th>
                        </tr>
                    </tbody>
                </table>
                </div>
                <div class="cart-list" id="cart">
                
                </div>
                <div class="cart-footer clear" id="cart-footer">
                    
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
$(function(){
	var id=1;
	$.ajax({
        type:"post",
        url:"../cart/list.do",
        dataType:'json',
        success:function(msg){
        console.log(msg);
        //console.log(msg.data.cartProductVoList[0].id);
 	    if(msg.status="0")
 		{
        for(i in msg.data.cartProductVoList){
       	    var carthtml="";
       	    carthtml+=' <table class="cart-table" data-product-id="26" data-checked="1">';
       	    carthtml+=' <tbody ><tr><td class="cart-cell cell-check">';
       	    carthtml+=' <input type="checkbox" class="cart-select" checked="checked">';
       	    carthtml+=' </td>  <td class="cart-cell cell-img">';
       	    carthtml+=' <a><img class="p-img" src="'+msg.data.cartProductVoList[i].productMainImage+'" alt="测试使用Apple iPhone 7 Plus (A1661) 128G手机"></a>';
       	    carthtml+=' </td><td class="cart-cell cell-info">  ';            
       	    carthtml+=' <a class="link p-name" href="">'+msg.data.cartProductVoList[i].productName+'</a>';
       	    carthtml+=' </td><td class="cart-cell cell-price">'+msg.data.cartProductVoList[i].productPrice+'</td>';
     	    carthtml+=' <td class="cart-cell cell-count">';
     	    carthtml+=' <span class="count-btn" data-opera-type="minus">-</span>';
     	    carthtml+=' <input class="count-input" data-max="118176" value="'+msg.data.cartProductVoList[i].quantity+'">';
     	    carthtml+=' <span class="count-btn" data-opera-type="plus">+</span>';
     	    carthtml+=' </td>';
     	    carthtml+=' <td class="cart-cell cell-total">￥'+msg.data.cartProductVoList[i].productTotalPrice+'</td>';
     	    carthtml+=' <td class="cart-cell cell-opera"><a class="link cart-delete">删除</a></td>';
     	    carthtml+=' </tr></tbody> </table>';
       	    $("#cart").append(carthtml);
 		   } 
 		   var cartfooterhtml="";
      	   cartfooterhtml+=' <div class="select-con"> <label >';
      	   cartfooterhtml+=' <input type="checkbox" class="cart-select-all" checked="checked">';
      	   cartfooterhtml+=' <span>全选</span>   </label> </div>';
      	   cartfooterhtml+=' <div class="delete-con">';
      	   cartfooterhtml+=' <a class="cart-delete-seleced link">';
      	   cartfooterhtml+=' <i class="fa fa-trash-o" aria-hidden="true"></i> <span>删除选中</span>';
      	   cartfooterhtml+=' </a> </div> <div class="submit-con"><span>总价：</span>';
      	   cartfooterhtml+=' <span class="submit-total">'+msg.data.cartTotalPrice+'</span>';
      	   cartfooterhtml+=' <span class="btn submit-btn" onclick="createorder();">去结算</span>   </div>  &nbsp';
 		   $("#cart-footer").append(cartfooterhtml);
 	     }else
 	    	 {
 	    	  location.href="../jsp/user-login.jsp";
 	    	 }
        },
        error:function(msg){
        console.log(msg);
        }
    });
});


function createorder(){         
     $.ajax({
     type:"POST",
     url:"../order/create.do",
     data:{"shippingId":4},
      dataType:'json',
     success:function(msg){
     	 console.log(msg);
     	 console.log("orderNo："+msg.data.orderNo);
     	  var orderNo= msg.data.orderNo
     	 if(msg.status="0")
     	 {
     		 
     		location.href="../jsp/order.jsp?orderNo="+orderNo;
         }
      },
      error:function(msg){
      console.log(msg);
      }
  });
}
</script>    
</html>
<%@ page language="java"  contentType="text/html; charset=UTF-8" %>
<html>
<body>
	<link rel="stylesheet" href="static/css/nav.css">
 	<link rel="stylesheet" href="static/css/footer.css">
    <link rel="stylesheet" href="static/css/header.css">
    <link rel="stylesheet" href="static/css/index.css">
    <link rel="stylesheet" href="static/css/layout.css">
<!--nav-->
<div class="nav">
    <div class="w">
        <div class="user-info">
            <span class="user not-login">
                <a class="link js-login"  href="jsp/user-login.jsp">登录</a>
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
<!--index-->
<div class="w">
            <ul class="keywords-list">
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=手机">手机</a>
                    <a class="link" target="_blank" href="./list.html?keyword=数码">数码</a>
                </li>
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=电脑">电脑</a>
                    <a class="link" target="_blank" href="./list.html?keyword=办公配件">办公配件</a>
                </li>
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=电视">电视</a>
                    <a class="link" target="_blank" href="./list.html?keyword=空调">空调</a>
                    <a class="link" target="_blank" href="./list.html?keyword=冰箱">冰箱</a>
                    <a class="link" target="_blank" href="./list.html?keyword=洗衣机">洗衣机</a>
                </li>
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=厨卫家电">厨卫家电</a>
                    <a class="link" target="_blank" href="./list.html?keyword=小家电">小家电</a>
                </li>
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=家具">家具</a>
                    <a class="link" target="_blank" href="./list.html?keyword=家具">家具</a>
                    <a class="link" target="_blank" href="./list.html?keyword=家装">家装</a>
                </li>
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=厨卫家电">厨卫家电</a>
                    <a class="link" target="_blank" href="./list.html?keyword=小家电">小家电</a>
                </li>
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=个护化妆">个护化妆</a>
                    <a class="link" target="_blank" href="./list.html?keyword=清洁用品">清洁用品</a>
                    <a class="link" target="_blank" href="./list.html?keyword=纸品">纸品</a>
                </li>
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=母婴用品">母婴用品</a>
                    <a class="link" target="_blank" href="./list.html?keyword=儿童玩具">儿童玩具</a>
                    <a class="link" target="_blank" href="./list.html?keyword=童装童鞋">童装童鞋</a>
                </li>
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=鞋靴">鞋靴</a>
                    <a class="link" target="_blank" href="./list.html?keyword=箱包">箱包</a>
                    <a class="link" target="_blank" href="./list.html?keyword=钟表">钟表</a>
                    <a class="link" target="_blank" href="./list.html?keyword=珠宝">珠宝</a>
                </li>
                <li class="keywords-item">
                    <a class="link" target="_blank" href="./list.html?keyword=图书">图书</a>
                    <a class="link" target="_blank" href="./list.html?keyword=音像">音像</a>
                    <a class="link" target="_blank" href="./list.html?keyword=电子书">电子书</a>
                </li>
            </ul>
            <div class="banner-con">
                <!--<div class="loading"></div>-->
                <ul>
                    <li><a href="" title=""><img class="banner-img" src="static/image/banner/banner1.jpg" alt=""></a> </li>
                </ul>
            </div>
        </div>
        <div class="w">
            <div class="floor-wrap">
                <h1 class="floor-title">F1 家用电器</h1>
                <ul class="floor-list">
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100006">
                            <span class="floor-text">双开门冰箱</span>
                            <img class="floor-img" src="static/image/floor/floor1-1.jpg" alt="双开门冰箱" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100007">
                            <span class="floor-text">电视</span>
                            <img class="floor-img" src="static/image/floor/floor1-2.jpg" alt="电视" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100008">
                            <span class="floor-text">洗衣机</span>
                            <img class="floor-img" src="static/image/floor/floor1-3.jpg" alt="洗衣机" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100009">
                            <span class="floor-text">空调</span>
                            <img class="floor-img" src="static/image/floor/floor1-4.jpg" alt="空调" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100010">
                            <span class="floor-text">热水器</span>
                            <img class="floor-img" src="static/image/floor/floor1-5.jpg" alt="热水器" />
                        </a>
                    </li>
                </ul>
            </div>
            <div class="floor-wrap">
                <h1 class="floor-title">F2 数码3C</h1>
                <ul class="floor-list">
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100011">
                            <span class="floor-text">笔记本电脑</span>
                            <img class="floor-img" src="static/image/floor/floor2-1.jpg" alt="笔记本电脑" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100012">
                            <span class="floor-text">手机</span>
                            <img class="floor-img" src="static/image/floor/floor2-2.jpg" alt="手机" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100013">
                            <span class="floor-text">平板电脑</span>
                            <img class="floor-img" src="static/image/floor/floor2-3.jpg" alt="平板电脑" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100014">
                            <span class="floor-text">数码相机</span>
                            <img class="floor-img" src="static/image/floor/floor2-4.jpg" alt="数码相机" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100015">
                            <span class="floor-text">3C配件</span>
                            <img class="floor-img" src="static/image/floor/floor2-5.jpg" alt="3C配件" />
                        </a>
                    </li>
                </ul>
            </div>
            <div class="floor-wrap">
                <h1 class="floor-title">F3 服装箱包</h1>
                <ul class="floor-list">
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100016">
                            <span class="floor-text">女装</span>
                            <img class="floor-img" src="static/image/floor/floor3-1.jpg" alt="女装" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100017">
                            <span class="floor-text">帽子专区</span>
                            <img class="floor-img" src="static/image/floor/floor3-2.jpg" alt="帽子专区" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100018">
                            <span class="floor-text">旅行箱</span>
                            <img class="floor-img" src="static/image/floor/floor3-3.jpg" alt="旅行箱" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100019">
                            <span class="floor-text">手提包</span>
                            <img class="floor-img" src="static/image/floor/floor3-4.jpg" alt="手提包" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100020">
                            <span class="floor-text">保暖内衣</span>
                            <img class="floor-img" src="static/image/floor/floor3-5.jpg" alt="保暖内衣" />
                        </a>
                    </li>
                </ul>
            </div>
            <div class="floor-wrap">
                <h1 class="floor-title">F4 食品生鲜</h1>
                <ul class="floor-list">
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100021">
                            <span class="floor-text">最爱零食</span>
                            <img class="floor-img" src="static/image/floor/floor4-1.jpg" alt="最爱零食" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100022">
                            <span class="floor-text">生鲜</span>
                            <img class="floor-img" src="static/image/floor/floor4-2.jpg" alt="生鲜" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100023">
                            <span class="floor-text">半成品菜</span>
                            <img class="floor-img" src="static/image/floor/floor4-3.jpg" alt="半成品菜" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100024">
                            <span class="floor-text">速冻专区</span>
                            <img class="floor-img" src="static/image/floor/floor4-4.jpg" alt="速冻专区" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100025">
                            <span class="floor-text">进口牛奶</span>
                            <img class="floor-img" src="static/image/floor/floor4-5.jpg" alt="进口牛奶" />
                        </a>
                    </li>
                </ul>
            </div>
            <div class="floor-wrap">
                <h1 class="floor-title">F5 酒水饮料</h1>
                <ul class="floor-list">
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100026">
                            <span class="floor-text">白酒</span>
                            <img class="floor-img" src="static/image/floor/floor5-1.jpg" alt="白酒" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100027">
                            <span class="floor-text">红酒</span>
                            <img class="floor-img" src="static/image/floor/floor5-2.jpg" alt="红酒" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100028">
                            <span class="floor-text">饮料</span>
                            <img class="floor-img" src="static/image/floor/floor5-3.jpg" alt="饮料" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100029">
                            <span class="floor-text">调制鸡尾酒</span>
                            <img class="floor-img" src="static/image/floor/floor5-4.jpg" alt="调制鸡尾酒" />
                        </a>
                    </li>
                    <li class="floor-item">
                        <a href="./list.html?categoryId=100030">
                            <span class="floor-text">进口洋酒</span>
                            <img class="floor-img" src="static/image/floor/floor5-5.jpg" alt="进口洋酒" />
                        </a>
                    </li>
                </ul>
            </div>
                 <!--all-->
             <div class="floor-wrap">
                <h1 class="floor-title">F6 ALL LIST</h1>
                <ul class="floor-list" id="alllist">
                  
                </ul>
            </div>
       <!--all-->
        </div>
        <!--index-->
   
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
<script src="static/js/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
        type:"post",
        url:"product/alllist.do",
        dataType:'json',
        success:function(msg){
       	 console.log(msg);
       	 var newshtml="";
       	 for(i in msg.data.list){
       	    newshtml+='<li class="floor-item">';
       	    newshtml+='<a href="jsp/detail.jsp?id='+msg.data.list[i].id+'">';
       	    newshtml+='<span class="floor-text">'+msg.data.list[i].subtitle+'</span>';
       	    newshtml+='<img class="floor-img" src="'+msg.data.list[i].mainImage+' "/>';
       	    newshtml+='</a></li> ';
       	 $("#alllist").append(newshtml);		 
       	 }
        },
        error:function(msg){
        console.log(msg);
        }
    });
	
}); 
</script>
</html>

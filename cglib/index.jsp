<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+path;
%>
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="false" /></jsp:include>


    <div class="banner_warp">
        
        <div class="banner">
            <ul>
                <li><a><img src="/images/banner6.jpg"></a></li>
                <li><a><img src="/images/banner1.jpg"></a></li>
                <li><a><img src="/images/banner2.jpg"></a></li>
                <li><a><img src="/images/banner3.jpg"></a></li>
                <li><a><img src="/images/banner4.jpg"></a></li>
            </ul>
        </div>


        <div class="login">

            <form class="fukrm" action="main.shtml" method="post" autocomplete="off" >
                <h2>安子预付卡</h2>
                <cite><img src="/images/icon_form_login_img1.png" />
                    <input type="text" name="mobile" value="${mobile}" check="required,phone" placeholder="请输入账户手机号" />
                </cite>

                <cite><img src="/images/icon_form_login_img2.png" />
                    <input type="password" name="password"  placeholder="请输入登录密码" check="required,password"/>
                </cite>

                <cite><img src="/images/icon_form_login_img3.png" />
                    <input type="text" name="code" style="width: 105px;" placeholder="请输入右边验证码" check="required"/>
                    <b class="checkcode"><img src="<%=basePath%>:8087/authImg?type=loginCode&id=1" /></b>
                </cite>
                <cite><input type="submit" value="登 &nbsp; 录" /></cite>
                <cite class="form_remember"><em><a href="/system_updatepwd.html">忘记密码</a> &nbsp;&nbsp;</em></cite>
            </form> 
        </div>
    </div>

    <div class="zpb">
        <ul>
            <li class="zp1"><a>银联多功能刷卡机</a></li>
            <li class="zp2"><a title="安子预付网关">银联及国际信用卡网上支付</a></li>
            <li class="zp3"><a title="充值缴费">支持移动、联通、电信，游戏充值等</a></li>
            <li class="zp4"><a title="易卡">商家会员卡解决方案</a></li>
            <li class="zp5"><a title="人民币跨境结算">安全、快捷的人民币跨境服务</a></li>
            <li class="zp6">
                <p><a class="ico" title="手机客户端">手机客户端</a></p>
                <p><a>iOS版下载</a>　<a>Android版下载</a></p>
            </li>
        </ul>
    </div>


    <div class="foot">
        <div class="foot_1">
            <div class="foot_1_hzjg">
                <div class="foot_line"><b>合作机构</b></div>
                <ul>
                    <li class="icbc"><a title="中国工商银行">中国工商银行</a></li>
                    <li class="cmbchina"><a title="招商银行">招商银行</a></li>
                    <li class="ccb"><a title="中国建设银行">中国建设银行</a></li>
                    <li class="abchina"><a title="中国农业银行">中国农业银行</a></li>
                    <li class="psbc"><a title="中国邮政储蓄银行">中国邮政</a></li>
                    <li class="unionpay"><a title="中国银联">中国银联</a></li>
                    <li class="hxb"><a title="华夏银行">华夏银行</a></li>
                    <li class="boc"><a title="中国银行">中国银行</a></li>
                    <li class="cgbc"><a title="广发银行">广发银行</a></li>
                    <li class="cebbank"><a title="中国光大银行">中国光大银行</a></li>
                    <li class="pingan"><a title="平安银行">平安银行</a></li>
                    <li class="ecitic"><a title="中信银行">中信银行</a></li>
                    <li class="bankcom"><a title="交通银行">交通银行</a></li>
                    <li class="cmbc"><a title="中国民生银行">中国民生银行</a></li>
                    <li class="hkbea"><a title="东亚银行">东亚银行</a></li>
                    <li class="sdb"><a title="上海银行">上海银行</a></li>
                    <li class="gzcb"><a title="广州银行">广州银行</a></li>
                    <li class="beijing"><a title="北京银行">北京银行</a></li>
                    <li class="spdb"><a title="浦发银行">浦发银行</a></li>
                    <li class="cib"><a title="兴业银行">兴业银行</a></li>
                    <li class="mastercard"><a title="MasterCard">MasterCard</a></li>
                    <li class="visa"><a title="visa">visa</a></li>
                </ul>
            </div>
            <div class="foot_1_hzsj">
                <div class="foot_line"><b>合作商家</b></div>
                <ul>
                    <li class="eleven"><a title="7-ELEVEN">7ELEVEN</a></li>
                    <li class="meiyijia"><a title="美宜家">美宜家</a></li>
                    <li class="circlek"><a title="OK便利店">OK便利店</a></li>
                    <li class="sun-high"><a title="上好便利店">上好便利店</a></li>
                    <li class="dht"><a title="东海堂">东海堂</a></li>
                    <li class="familymart"><a title="全家familymart">全家familymart</a></li>
                    <li class="c-store"><a title="喜士多便利连锁店">喜士多便利连锁店</a></li>
                    <li class="jie72"><a title="72街">72街</a></li>
                    <li class="kbscn"><a title="日阅堂">日阅堂</a></li>
                    <li class="mcdonalds"><a title="麦当劳">麦当劳</a></li>
                    <li class="kendeji"><a title="肯德基">肯德基</a></li>
                    <li class="crv"><a title="华润万家超市">华润万家超市</a></li>
                </ul>
            </div>
            <div class="foot_1_xwgg">
                <div class="foot_line"><strong><b>&nbsp;新闻公告</b></strong></div>

                <ul>
                    <li><a href="http://www.anzipay.com/index.php?m=content&c=index&a=show&catid=2&id=3">移动支付国标明年实施 刷手机消费有望迎来高峰...</a></li>
                    <li><a href="http://www.anzipay.com/index.php?m=content&c=index&a=show&catid=2&id=2">网络支付未来五年或超20万亿...</a></li>
                    <li><a href="http://www.anzipay.com/index.php?m=content&c=index&a=show&catid=2&id=1">銀行轉戰移動支付市場 搶食8000億元蛋糕...</a></li>
                  
                </ul>
            </div>
        </div>
    </div>

    

<!-- 尾部 -->
<jsp:include page="/cglib/foot.jsp" ></jsp:include>
<script src="/js/fukrm.js"></script>
<script src="/js/index.js"></script>
<script>$('.topbar_login').html('<li>预付卡迎您！！</li>')</script>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>


<!-- 头部 -->
<jsp:include page="/cglib/header_unlogin.jsp" flush="true"/>
<link rel="stylesheet" href="/css/login.css">
<div class="bu">
  <ul>
    <li><a href="#">银联POS</a></li>  
    <li><a href="#">支付网关</a></li>  
    <li><a href="#">跨境结算</a></li>  
    <li><a href="#">会员卡系统</a></li>  
    <li><a href="#">充值缴费</a></li>  
    <li><a href="#">移动收款</a></li>  
    <li><a href="#">代收代付</a></li>  
  </ul>
</div>
<br><br>


<div class="log18">

  <div class="log19">
    <ul>
      <li class="li_sp1">1.填写账户信息</li>
      <li class="li_sp1">2.验证账户信息</li>
      <li class="li_sp2">3.完成</li>
    </ul>

  </div>
</div>






<div class="log20">
  <div class="log28">
    <div class="log35"><img src="/images/pic3.gif"></div>
    <div class="log36 s14">

      <span class="orange b s16">注册成功，您的账户已激活！</span>
      <p class="s14">账户名：<span class="orange b s14">15012460225</span></p>
      <p class="gray s12">
        您可使用手机号码或电子邮箱，登录易票联支付旗下网站
        <a class="blue" href="#" target="_blank">商家空间</a>&nbsp;<a class="blue" href="#" target="_blank">易刷</a> &nbsp;<a class="blue" href="#" target="_blank">全球付</a>。
      </p>
    </div>
  </div>
 </div>



<!-- 尾部 -->
<jsp:include page="/cglib/foot.jsp" flush="true"/>


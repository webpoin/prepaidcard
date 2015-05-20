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

<div class="log18"><div class="log19 s16 b"><a href="#" class="s16 black">首页</a> &gt; 找回密码</div></div>


<div class="log20"> <div class="log28"> <div class="log30 b s16" style="line-height: 154px;"> 登录密码修改成功！ </div> </div> </div>







<!-- 尾部 -->
<jsp:include page="/cglib/foot.jsp" flush="true"/>
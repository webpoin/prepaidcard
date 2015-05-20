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



<div class="log20">
  	  <div class="log21">
        <form id="pwdRetackAccountForm" name="pwdRetackAccountForm" method="post" action="#">
  	    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  	      <tbody><tr>
  	        <td width="19%" height="45" align="right" class="s14"><span class="red">*</span> 账户：</td>
  	        <td width="32%" style="padding-left:7px;">
                  <input name="account" type="text" class="seach3" id="account" value="" size="29" placeholder="账号 / 邮箱 / 卡号 / 手机号"></td>
  	        <td width="49%">
                  <div>
                  <img id="errImg" src="/images/error.gif" style="vertical-align:middle; margin-right:6px;
                          display: none;">
                      <span class="red" id="errMsg"></span>
                      
                   </div>
              </td>
	        </tr>
  	      <tr>
  	        <td height="45" align="right" class="s14"><span class="red">*</span> 验证码：</td>
  	        <td style="padding-left:7px;">
  	          <table width="100%" border="0" cellspacing="0" cellpadding="0">
  	            <tbody><tr>
  	              <td width="40%">
  	                <input name="verifycode" type="text" id="verifycode" value="" size="8" class="seach3" maxlength="5">
  	                </td>
  	              <td width="60%">
                        <img border="0" id="verifycodeimg1" height=20 title="点击图片刷新验证码" src="#">
  	              </td>
  	              </tr>
  	            </tbody></table>
  	          </td>
  	        <td>
  	              <div>
                  <img id="verifycodeImg" src="/images/error.gif" style="vertical-align:middle; margin-right:6px; display: none;" display:="" none;="">
                  <span class="red" id="verifycodeMsg"></span>
                  
                  </div>
  	        </td>
	        </tr>
  	      <tr>
  	        <td height="50" align="right" class="s14">&nbsp;</td>
  	        <td colspan="2" style="padding-left:7px;"><div class="btn"><a href="###">下一步</a></div></td>
  	        </tr>
  	      <tr>
  	        <td colspan="3" style="line-height:20px;">&nbsp;</td>
  	        </tr>
	      </tbody></table>
            </form>
  	  </div>
  	</div>



<!-- 尾部 -->
<jsp:include page="/cglib/foot.jsp" flush="true"/>


























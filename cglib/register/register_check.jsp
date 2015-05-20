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
    <li><a href="#">支付网关</a></l i>  
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
          <li class="li_sp2">2.验证账户信息</li>
          <li class="li_sp1">3.完成</li>
      </ul>

    </div>
</div>


<div class="log20">
  <div class="log21">
    <form action="#" name="verifyRegForm" id="verifyRegForm" method="post">
      <div align="center" style="color: #ff0000;"></div>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" id="smsTable" >
        <tr>
          <td width="19%" height="45" align="right" class="s14"><span class="red">*</span> 手机号码：</td>
          <td width="32%" style="padding-left:7px;">15012460225</td>
          <td width="49%" valign="middle"></td>
        </tr>
        <tr>
          <td height="45" align="right" class="s14"><span class="red">*</span> 验证码：</td>
          <td style="padding-left:7px;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="40%">
                  <input name="smsCode" type="text" id="smsCode" value="" size="8" class="seach3" autocomplete="off" maxlength="6"/>
                </td>
                <td width="60%">
                  <input type="button" name="getSmsCodeBt" id="getSmsCodeBt" value="重发验证码" style="display: none;"/>
                  <div class="gray" id="timerDisplay">(<span id="smsTimer">60</span>秒后)重新获取短信</div>
                </td>
              </tr>
            </table>
          </td>
          <td valign="middle">
            <div id="smsCodeDisplay"></div>
            <div id="smsCodeErrorDisplay" style="display: none;">
              <img src="/images/error.gif" style="vertical-align:middle; margin-right:6px;"/>
              <span class="red" id="smsCodeErrorDes"></span>
            </div>
          </td>
        </tr>
        <tr>
          <td height="25" align="right" class="s14"></td>
          <td style="padding-left:7px;"><span class="gray">请输入您获取短信上的验证码数字</span></td>
          <td valign="middle"></td>
        </tr>
        <tr>
          <td width="19%" height="50" align="right" class="s14">&nbsp;</td>
          <td width="81%" colspan="2" style="padding-left:7px;">
            <div class="btn"><a href="###" id="mBt">提交</a></div>
            <div id="mBtLoading" style="display: none;"><img src="/images/loading.gif" alt="" border="0"/></div>
          </td>
        </tr>
        <tr>
          <td colspan="3" style="line-height:20px;">&nbsp;</td>
        </tr>
        <tr>
          <td height="10" colspan="3" style="line-height:20px;">&nbsp;</td>
        </tr>
      </table>
    </form>
  </div>
</div>



 </div>






 <script src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/js/member.util.js"></script>
<script type="text/javascript" src="/js/member.ajax.js"></script>
<script type="text/javascript" src="/js/member.main.js"></script>
</head>

<script type="text/javascript">
  $(function() {
    var self = member.main;
    self.basic.init({pageStep:"verifyAccountInfo"});
  });
</script>






<!-- 尾部 -->
<jsp:include page="/cglib/foot.jsp" flush="true"/>


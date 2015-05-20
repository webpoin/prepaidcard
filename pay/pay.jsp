<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title>安子预付卡</title>
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<% 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
	request.setAttribute("basePath",basePath);
%>
	<base href="${basePath}">
	

	<link rel="stylesheet" href="/css/global.css">
	<link rel="stylesheet" href="/css/user.css">
	
	<!--[if lt IE 8]><script src="js/ie67.js"></script><![endif]-->
	
</head>
<body>

	<!-- 顶部导航 -->
	<div class="head_top">
		<ul class="head_top_wel">
			
			<li>安淘预付卡迎您！！</li>
			<li><a href="index.shtml" class="head_login">登录</a></li>
		</ul>
	
		<ul class="head_top_tool">
			<li><a href="http://114.215.239.103:8084/index.html">积分商城</a></li>
			<li><a href="http://114.215.239.103:8085/index.shtml">异业联盟</a></li>
			<li><a href="http://ataoh.com">安淘惠商城</a></li>
			<li><a href="http://anzipay.com/">安子支付</a></li>
			<!-- <li><a href="article.shtml">帮助中心</a></li> -->
		
			<li><a href="#">网站导航<i></i></a>
				<cite class="head_top_nav">
					<dl><dt><a href="http://114.215.239.103:8084/index.html">积分商城</a></dt>
						<dd><a href="http://114.215.239.103:8084/index.html">商城首页</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">我的积分</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">登陆商城</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">注册会员</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">我的会员卡</a></dd>
						<dd><a href="http://114.215.239.103:8084/index.html">升级银行卡</a></dd>
					</dl>
					<dl><dt><a href="http://114.215.239.103:8085/index.shtml">异业联盟</a></dt>
						<dd><a href="http://114.215.239.103:8085/index.shtml">登陆后台</a></dd>
						<dd><a href="http://114.215.239.103:8085/index.shtml">联盟平台</a></dd>
						<dd><a href="http://114.215.239.103:8085/index.shtml">在线咨询</a></dd>
						<dd><a href="http://114.215.239.103:8085/index.shtml">联盟新闻</a></dd>
						<dd><a href="http://114.215.239.103:8085/index.shtml">注册加盟</a></dd>
					</dl>
					<dl><dt><a href="http://114.215.239.103:8087/index.shtml">安子预付卡</a></dt>
						<dd><a href="http://114.215.239.103:8087/index.shtml">手机充值</a></dd>
						<dd><a href="http://114.215.239.103:8087/index.shtml">生活代缴</a></dd>
						<dd><a href="http://114.215.239.103:8087/index.shtml">银联pos</a></dd>
						<dd><a href="http://114.215.239.103:8087/index.shtml">会员卡系统</a></dd>
						<dd><a href="http://114.215.239.103:8087/index.shtml">申请加盟</a></dd>
					</dl>
					
				</cite>
			</li>
		
			
		</ul>
	</div>


	<!--头部 -->
	<div class="head_nav">
		<div class="center">
			<a href="/index.shtml" class="head_nav_logo"><img src="/images/logo.png" alt="安淘惠" style="margin-top:7px;"></a>
			<ul>
				<li class="active"><a href="/index.shtml">预付卡首页</a></li>
				<li><a href="http://www.anzipay.com/index.php?m=content&c=index&a=lists&catid=4">合作加盟</a></li>
				<li><a href="http://www.anzipay.com/index.php?m=content&c=index&a=lists&catid=7">关于我们</a></li>
				<li><a href="http://www.anzipay.com/index.php?m=content&c=index&a=lists&catid=2">公司新闻</a></li>
			</ul>
		</div>
	</div>

<div class="main">

	<style>
		.main{padding-left: 20px;}
		.main:before{display: none;}
	
	</style>


	<form action="/outside_paysumbit.shtml?returnurl=1&" method="post" class="fukrm"  enctype="multipart/form-data">
		<h3>支付订单</h3>



		<cite><span>商户编号：</span><input type="text" name="partner" check="required" placeholder="请输入您的商户编号" value="${partner}" readonly="readonly"></cite>
		<cite><span>支付金额：</span><input type="text" name="total_fee" check="required" placeholder="请输入您的支付金额" value="${total_fee}" readonly="readonly"></cite>
		<cite><span>货币类型：</span>
			<label><input type="radio" name="currency_type" value="RMB" checked="checked">人民币</label>
		</cite>
		<cite><span>商品名称：</span><input type="text" name="memo" check="required" placeholder="请输入商品名称" value="${memo}" readonly="readonly"></cite>
		
		<br>
		<cite><input type="submit" value="提交"></cite>
	</form>
</div>


<div class="footer">
  <div style="clear: both;height: 0"></div>
  <div class="foot_2">
    <p><a target="_blank">关于安子</a>
      ｜ <a target="_blank">官方微博</a>
      ｜ <a target="_blank">帮助中心</a>
      ｜ <a target="_blank">联系我们</a>
      ｜ <a target="_blank">友情链接</a>
      ｜ <a target="_blank">诚聘英才</a>
      ｜ <a target="_blank">网站地图</a>
    </p>
    <p> Technology 2007-2014 Copy Right&copy; 安子支付版权所有&nbsp;&nbsp;&nbsp;&nbsp;ICP证：粤备09120482号</p>
  </div>
  <div class="foot_3">
    <ul>
      <li class="pay1"><a target="_blank" title="支付业务许可证">支付许可证</a></li>
      <li class="pay2"><a title="中国支付清算协会会员证" target="_blank">支付清算协会会员证 </a></li>
      <li class="pay3"><a title="中金国盛服务认证证书" target="_blank">中金国盛服务认证证书 </a></li>
      <li class="pay4"><a title="支付系统技术安全认证" target="_blank">系统技术安全认证 </a></li>
      <li class="pay5"><a target="_blank" title="Visa验证">Visa验证</a></li>
      <li class="pay6"><a title="诚信电商" target="_blank">诚信电商 </a></li>
      <li class="pay7"><a title="PCI DSS认证" target="_blank">PCI DSS</a></li>
      <li class="pay8"><a title="红盾信息电子标识" target="_blank">红盾信息电子标识</a></li>
    </ul>
  </div>


  <script src="/js/global.js" ></script>
    <script src="/js/fukrm.js" ></script>
    <script src="/js/backstage.js" ></script>

<script>


	$('fukrm').on('submit',function(){

		var form = $(this);
		var check = [];
		$(this).find('input,textarea,select').filter('[check]').filter(':visible').each(function(){
			var the = $(this);
			if(!the.closest('cite').children('i').is('.form-note-success') && !the.formCheck() ){
				check.push(the);
			}

		});

		if(check.length>0){
			check[0].focus();
			return false;
		}



		// 发送手机短信
		$.ajax({
			type: "POST",
			dataType:'json',
			url: form.attr('action'),
			data: form.serialize(),
			success: function(data) {
				if(data.status && data.status === '200'){
					if(data.url){
						window.location.href = data.url 
					}else{
						location.reload();
					}
				}else{
					alert(data.message);
				}
			},
			error:function(){

			}
		});

		return false;
		
	
	});

	// 等待
	// dialog.html('<img src="/images/dialog_wait.png"><p>您的订单正在等待支付中......</p><a class="btn">重新支付</a><a class="btn_close" href="#">关闭页面</a>').dialog('open');

	// 成功
	// dialog.html('<img src="/images/dialog_success.png"><p>恭喜您！您的订单已支付成功！</p><a class="btn">继续支付</a><a class="btn btn_close" href="#">关闭页面</a>').dialog('open');

	// 失败
	// dialog.html('<img src="/images/dialog_faile.png"><p>对不起！您的订单支付失败！</p><a class="btn">重新支付</a><a class="btn btn_close" href="#">关闭页面</a>').dialog('open');



	dialog.on('click','a.btn',function(){

		dialog.dialog('close');
		return false;
	});

</script>
</body>
</html>


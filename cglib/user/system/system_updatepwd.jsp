<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="false" /></jsp:include>

<style>
	.updatepwd{position: relative; width: 960px; margin: 0 auto 10px;text-align: left; border:1px solid #d7d7d7;margin-top: -1px;text-align: left;}
	h3{margin:20px 100px 30px;font-size: 18px;line-height: 36px;height: 36px; border-bottom: 1px solid #ddd;font-weight: normal;}
	.updatepwd .fukrm{margin-left: 150px;}
	.updatepwd .fukrm cite{margin-bottom: 20px;}
	.updatepwd .fukrm p{margin-left: 87px;}
	.fukrm_item i{position: absolute;}
	.fukrm_item i.form-note-success{display: inline-block;}
	.fukrm_item i.form-note-warn{display: inline-block; }
	.fukrm_item i.form-note-error{display: inline-block; }
</style>

	<div class="updatepwd">
		<h3>修改登录密码</h3>

		<br>
		<form action="/systemPwd.shtml" method="post" class="fukrm">
			<input type="hidden" name="phone">
			<cite>
				<span><em>*</em>手机号码：</span>
				<input type="text" name="mobile" check="required,phone" placeholder="请输入手机号码">
				<p>请输入您注册时填入的有效手机号</p>
			</cite>	<br>
			
			<cite>
				<span><em>*</em>短信验证码：</span>
				<input type="text" name="code" check="required" style="width:136px" placeholder="请输入短信验证码" class="checkcode">
				<b class="getcode" for="mobile" url="/code.html">获取验证码 ></b>
			</cite><br>

			
			<cite>
				<span><em>*</em>账户密码：</span>
				<input type="password" name="NewPassword" placeholder="请输入账户密码" check="required"  class="checkstrong fukrm_save">
				<p style="width:400px;padding-top:5px;">
					密码强度: <span class="checkstrong_res">
					<b >弱</b><b>中</b><b>强</b></span><br>
					<img src="/images/icon_warm.png" style="vertical-align: -2px;width:14px;" >为保证您帐号的安全，建议密码由6-16位字符（字母、数字、符号）<br>组合而成，不能只使用一种字符，不区分大小写！
				</p>
			</cite><br>

			<cite>
				<span><em>*</em>确认密码：</span>
				<input type="password" name=""  placeholder="请重新输入账户密码" check="required,repassword"  class="fukrm_save">
				<p>再次输入您的账户密码以确认您记住了您的密码</p>
			</cite>

			
			<br><br>
			<cite><span></span><input type="submit" value="提交"></cite>
			<br><br><br><br>
		</form>


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
<script>
	// 异步提交文件
	$('.fukrm').ajaxForm({
		type:'POST',
		dataType:'json',
		beforeSubmit:function(data,form){
			var check = [];
			form.find('input,textarea,select').filter('[check]').filter(':visible').each(function(){
				var the = $(this);
				if(!the.siblings('i').is('.form-note-success') && !the.formCheck() ){
					check.push(the);
				}

			});
			if(check.length>0){
				check[0].focus();
				return false;
			}
		},
		success: function(data) {
			if(data.status && data.status === '200'){
				if(data.url){
					alert('修改成功!直接跳转登录页面!')
					window.location.href = data.url;
				}else{
					location.reload();
				}
			}else{
				alert(data.message);
			}
		}
	});

</script>



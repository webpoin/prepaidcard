<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- 头部 -->
<jsp:include page="/cglib/header.jsp" ><jsp:param name="loaded" value="false" /></jsp:include>

<style type="text/css">

	.reginster{position: relative; width: 960px; margin: 0 auto 10px;text-align: left; border:1px solid #d7d7d7;margin-top: -1px;}
	.note{position: absolute;right: 30px; top: 190px;width: 280px;padding-bottom: 20px;color: #04B2FB;border: 2px solid #EBF4FD;text-align: center;}
	.note img{width: 128px;height: 68px;margin-top: 20px;}
	.note h2{font-size: 18px;margin: 0px 10px 10px; line-height: 36px;padding-bottom: 10px; font-weight: normal; border-bottom: 2px dotted #ddd;}
	.note p{ font-size: 12px;line-height: 22px;text-align: left;margin: 0 20px;}

	.reginster .fukrm{margin-left: 30px;}
	.reginster .fukrm cite{margin-bottom: 20px;}
	.fukrm_item i.form-note-success{display: inline-block;}
	.fukrm_item i.form-note-warn{display: inline-block; }
	.fukrm_item i.form-note-error{display: inline-block;  }

</style>


	<div class="center reginster">

		<img src="/images/register_apply.png" style="width: 100%;">
		<br><br><br><br>
		
		<form action="saveapply.shtml" class="fukrm js-form-note" style="position: relative;" >

			<cite>
				<span><em>*</em>手机号码：</span>
				<input type="text" name="mobile" placeholder="请输入联系人手机号码" check="required,phone" >
				<p style="margin-left: 84px;">我们的客服人员会在一个工作日内与您联系，请输入真实有效的联系方式。</p>
			</cite><br>

			<cite>
				<span><em>*</em>您的称呼：</span>
				<input type="text" name="name"  placeholder="请输入您的尊称" check="required" >
			</cite><br>

			<cite>
				<span><em>*</em>公司名称：</span>
				<input type="text" name="username"  placeholder="请输入申请加盟的公司名称" check="required" >
			</cite><br>


			<cite>
				<span><em>*</em>商铺地址：</span>
				<label class="js-form-city">
					<select class="prov" name="province"  style="width: 120px;" ></select>
					<select class="city" name="city" style="width:120px;"></select>
					<select class="town" name="county" style="width:180px;"></select>
				</label>
			</cite><br>
			<cite><span></span><input type="text" name="address" placeholder="请输入详细地址" style="width: 400px;"></cite><br>

			<br>
			<cite><span></span><input type="submit" value="提交"></cite>
			<br><br><br><br><br>
		</form>


		<div class="note">
			<img src="/images/register_apply_pic.png">
			<h2>申请加盟</h2>
			<p>你的信息提交后我们的客服人员将会在1个工作日期内给予您回复，请您耐心等候。</p>
		</div>


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
<jsp:include page="/cglib/foot.jsp" flush="true"/>
<script src="/js/fukrm.js"></script>
<script>$('.nav .links').find('li').removeClass('active').eq(1).addClass('active');</script>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>


<!-- 头部 -->
<jsp:include page="/cglib/header_unlogin.jsp" flush="true"/>



	<form action="/register_store.shtml" method="post" class="regis fukrm">

		<label>
			<span><em>*</em>手机号码：</span>
			<input type="text" name="mobile" placeholder="请输入您的手机号码" value="" check="required,phone">
		</label>
		<label>
			<span><em>*</em>登录密码：</span>
			<input type="password" name="password" placeholder="可由6-20个字母和数字组成，区分大小写" value="" check="required,password">
		</label>
		<label>
			<span><em>*</em>确认登录密码：</span>
			<input type="password" name="cPassword" value="" check="required,repassword">
		</label>
		<label>
			<span><em>*</em>支付密码：</span>
			<input type="password" name="payPassword" placeholder="可由6-20个字母和数字组成，区分大小写" value="" check="required,password">
		</label>
		<label>
			<span><em>*</em>确认支付密码：</span>
			<input type="password" name="cPayPassword" value="" check="required,repassword2">
		</label>
		<label class="checkcode_box">
			<span><em>*</em>验证码：</span>
			<input type="text" name="verifycode"  value="" check="required,num" style="width: 150px;"> 
			<b class="checkcode"><img src="authImg?type=loginCode&id=1&time=16546" alt=""></b>
		</label>


		<div class="regis_note">
			为了保障您的权益，请于注册或使用本服务前，详细阅读本协议所有内容。当您注册或使用本服务时，即表示您已阅读、了解并同意接受本协议之所有内容。我们保留随时修改本协议之权利，并随时通过易票联支付网站公布最新之变更事项，而无需另作个别通知。<br>

			易票联支付技术有限公司是提供网络商务服务的网站，非银行或金融机构，所提供之服务不属于银行业务。本公司会妥善保管您的账户上的资金，且这些资金仅供交易使用，不产生利<br>息。无论在任何时候，均会将您的资金独立于本公司资金之外，并不会将您的资金用于非您指示的用途上。<br>

			当用户注册易票联支付会员时，建议用户提供真实、准确的个人资料，并在个人资料有所变动时进行及时更新。本公司收集个人信息的目的是为用户提供尽可能多的个性化服务以及通<br>告产品优惠信息等的方便。但本公司允许用户保留匿名注册的权利。<br>

			您同意本公司使用电子方式与您保持联系。电子方式包括发送电子邮件、短信等。本公司承诺不发送与易票联支付无关的内容。<br>

			为保障易票联支付用户的权益，易票联支付系统将为用户保留第一次注册时登记的邮箱，万一用户账户密码被盗或资料被篡改时，您可以使用您第一次注册时登记的邮箱取回新的密码<br>。因此请用户不要接受他人转让的易票联支付账户，以免纠纷。<br>

			票联承诺不公开用户的姓名、地址、电子邮箱等个人信息。以下情况除外：<br>

			1) 经用户授权;<br>
			2) 相应的法律及程序要求易票联支付提供用户的个人资料。<br>

			用户一旦注册成功，便成为易票联支付的合法用户，将得到一个密码和账号。用户有义务保证密码和账号的安全。用户对利用该密码和账号所进行的一切活动负全部责任;由此所衍生<br>的任何损失或损害，本公司无法也不负担任何责任。用户可以选用本公司提供的安全手段加强账户在使用时的安全性。用户如发现您的密码和账号遭到未授权的使用，或账务记录有错误，或发生其他任何安全问题，有义务立即通知本公司，以减少或挽回损失。<br>

			在易票联支付支付平台上结算时的银行账号和密码的安全性由相应支付银行负责。易票联支付公司不对此服务的安全性做任何担保，但易票联支付承诺帮助用户对其在使用银行支付过<br>程中出现的问题与相关机构进行协调。<br>

			用户使用易票联支付服务时必须遵守相关法律法规的有关规定，不得将易票联支付账户用于非法用途;不得干扰和影响易票联支付网络及业务的正常运作，如通过黑客工具、机器人程<br>序等扰乱易票联支付网络及业务的正常运作等;不得利用易票联支付系统的漏洞获取不正当利益;不得做出任何损害易票联支付和其他用户利益的行为。若用户的行为有违本条服务条款，本公司有权视情节轻重采取相应处理措施，以维护易票联支付系统的正常运行以及其他用户的合法权益;由此导致的用户损失本公司不承担任何责任。对情节严重的，本公司保留诉诸法律的权利。<br>

			易票联支付只提供网上支付平台服务，用户需审慎对待自己所选择的网站产品和服务，并承担相关后果。用户如发现所消费的网站有反动、淫秽等违反中国法律法规的内容，请及时向<br>有关部门举报。<br>

			当您使用易票联支付服务时，本公司会向您收取一定的服务费用。各项服务收费情况详见易票联支付网站公布的收费方式说明。本公司拥有制定和调整易票联支付服务费之权利。您同<br>意支付上述服务费用，除非另有说明，本公司有权从您的账户中自动扣除相关费用。目前使用易票联支付相关服务将全部免收服务费。但易票联支付公司保留随时开收服务费的权力。<br>

			易票联支付不提供退款服务，用户可通过转账处理账户余额。用户可享受易票联支付不定期赠送的折扣优惠或消费积分奖。<br>

			对于连续3个月不曾使用且剩余金额为零的易票联支付账号，易票联支付公司有权对该账号进行冻结处理;对于连续6个月不曾使用且剩余金额为零的易票联支付账号，易票联支付公司<br>有权对该用户账号进行销户处理。被销户后，原账号的所有信息将全部丢失。原账户用户如需使用易票联支付服务，请重新注册账号。易票联支付公司有权将被销户后的账号转给其他新用户注册使用。<br>

			对于那些在一年内未有任何交易记录的空账号，易票联支付有权予以消号处理;用户再次使用时，可以重新注册新账号。<br>

			本“服务协议”的各项条款与国家有关法律保持一致，如与法律条款有相抵触的内容，以法律条款为准。<br>
			</div>


			<input type="submit" value="同意协议并注册" style="margin-left: 200px;margin-top: 30px;" />

	</form>





<script src="/js/jquery-1.11.1.min.js"></script>
<script src="/js/fukrm.js"></script>
<script>
	$(this).attr('src','authImg?type=loginCode&id=1&time='+(new Date).getTime());
</script>


<!-- 尾部 -->
<jsp:include page="/cglib/foot.jsp" flush="true"/>
















<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

	<div class="banner">
		<div class="img-text clearfix">
			<div class="text lMarginLg">
				<div class="user-account">
					<p>操作员：<strong>${user.username}</strong></p>
					<p>账号：<strong>${phone}</strong></p>
					<p>上次登陆：<fmt:formatDate value="${user.logintime}" pattern="yyyy-MM-dd HH:mm"/></p>
				</div>
			</div>
		</div>
		<div class="greeting" id="banner-greeting">
			<span id="greeting-name"></span>
			<script>
				(function (hello) {
					var res,h = (new Date()).getHours(),hello = ['<span>上午好，</span><p>你若盛开，清风自来~</p>',
								'<span>下午好，</span><p>午后小憩，喝杯咖啡，继续加油！</p>',
								'<span>晚上好，</span><p>好好享受与家人团聚的时刻~</p>'];
					if(h<12){
						res = hello[0];
					}else if(h<18){
						res = hello[1];
					}else{
						res = hello[2];
					}

					document.write(res);

				})();

			</script>
		</div>
	</div>

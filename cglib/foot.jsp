<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


</div>



<div class="footer">
 
  <div class="foot_3">
    <p style="margin-bottom:10px;">备案号粤ICP备13079336号 Copyright @ 2015 安子支付 版权所有.</p>
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


  
  <c:if test="${login eq 'false'}">
    <script src="/js/global.js" ></script>
  </c:if>
  <c:if test="${login eq 'true'}">
    <script src="/js/global.js" ></script>
    <script src="/js/fukrm.js" ></script>
    <script src="/js/backstage.js" ></script>
  </c:if>

</body>
</html>

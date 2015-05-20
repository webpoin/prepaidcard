<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

	<div class="user_sidebar" id="user_sidebar">
		<script>
			var tree = [];
			var pathname = location.pathname;
			var each = '';
			
			<c:forEach var="list" items="${list}" varStatus="status">
				tree.push({id:${list.id},pid:${list.pid},name:'${list.name}',url:'${list.url}',state:'${list.state}'});
			</c:forEach>

			document.getElementById('user_sidebar').innerHTML =  (function(tree,pid){
				var res = [];
				var nch = true;
				for (var i in tree) {
					if (tree[i].pid == pid) {

						each = '<a title="'+tree[i].name+'" href="'+tree[i].url+'" class="" >'+tree[i].name+'</a>';

						// 加上当前活动类
						if(tree[i].url && pathname.indexOf(tree[i].url) >=0){each = each.replace(/class\=\"([\w\s]*?)\"/gi,'class="$1 on"');}

						// 去掉无href的链接
						if(!tree[i].url){each = each.replace(/href\=\"\"/gi,'');}

						// 加上图标类
						if(tree[i].name == '运营管理'){each = each.replace(/class\=\"([\w\s]*?)\"/gi,'class="$1 side_opa"');}
						if(tree[i].name == '业务规则'){each = each.replace(/class\=\"([\w\s]*?)\"/gi,'class="$1 side_bsn"');}
						if(tree[i].name == '商户管理'){each = each.replace(/class\=\"([\w\s]*?)\"/gi,'class="$1 side_mch"');}
						if(tree[i].name == '会员卡管理'){each = each.replace(/class\=\"([\w\s]*?)\"/gi,'class="$1 side_crd"');}
						if(tree[i].name == '短信管理'){each = each.replace(/class\=\"([\w\s]*?)\"/gi,'class="$1 side_sms"');}
						if(tree[i].name == '账户管理'){each = each.replace(/class\=\"([\w\s]*?)\"/gi,'class="$1 side_acc"');}
						if(tree[i].name == '权限管理'){each = each.replace(/class\=\"([\w\s]*?)\"/gi,'class="$1 side_pow"');}
						if(tree[i].name == '加盟申请'){each = each.replace(/class\=\"([\w\s]*?)\"/gi,'class="$1 side_apy"');}


						res.push(each);
						res.push(arguments.callee(tree, tree[i].id));
						nch = false;
					}
				}
				return (pid === 0 || nch) ? res.join('') : '<cite>' + res.join('\n') + '</cite>';
			})(tree,0);

		</script>

	</div>
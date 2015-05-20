$(function() {



	/* 文档树选择  */
	$('.checkboxtree').on('click', 'label', function(e) {

		var $this = $(this);

		// 取消选中时-->
		// 遍历子选项，全部不选中;
		// 遍历同级 [如果全不选中->取消父级选中,递归袓辈;有选中->中断循环]
		if ($this.children('input').prop('checked')) {
			$this.next('cite').find('input').prop('checked', true);
			$this.parents('cite').prev('label').children('input').prop('checked', true);
			
			
			// 选中时-->
			// 遍历子选项，全部选择;
			// 遍历全部父级，全部选择
		} else {
			$this.next('cite').find('input').prop('checked', false);
		}

	}).on('click', 'i', function() {
		var $this = $(this);

		if ($this.html() === '+') {
			$this.html('-').parent('cite').children().not('i').css('display', 'block');

		} else {
			$this.html('+').parent('cite').children().not('i').css('display', 'none');
		}
	});



	// 表格更多
	var doc = $(document).on('click','a.more',function(){
		var $this = $(this);
		dialog.html($this.siblings('.moreinfo').clone()).dialog("option","title", $this.attr('title')).dialog('open');
		return false;
	});



	// 主体不留空功能
	// 当左边比右边小的时候，不执行
	// 当主体框比屏幕高度大的时候 贴底
	// 当主体框比屏幕高度小的时候 贴顶
	(function(cnt){

		var win = $(window);
		var winght = win.height();
		var cntght = cnt.outerHeight();
		var parght = cnt.parent().outerHeight();

		var cnttop = cnt.offset().top;
		var cntfix = cntght>winght? (cnttop+cntght-winght) : cnttop;
		var boxbom = cnttop+parght-cntght;

		var iscntfix = true;
		var isboxbom = true;

		if(cntght == parght){return false};


		
		// 判断底是否显示在视线中
		win.on('scroll',function(){
			var top = win.scrollTop()

			// 当元素顶部或底部显示时检测
			if( (top>cntfix && iscntfix) || (top<cntfix && !iscntfix) ){
				iscntfix = iscntfix ? false: true;
				if(!iscntfix){
					cnt.css({position:'fixed',top:cntght>winght?winght-cntght:0});
				}else{
					cnt.css({position:'relative',top:0});
				}
			}

			// 当外层底部显示时检测
			if( (top>boxbom && isboxbom) || (top<boxbom && !isboxbom) ){
				isboxbom = isboxbom ? false: true;
				if(isboxbom){
					cnt.css({position:'fixed',top:cntght>winght?0:winght-cntght});
				}else{
					cnt.css({position:'relative',top:parght-cntght});
				}
			}
		});

		win.trigger('scroll');
		

	})($('.content'));




});
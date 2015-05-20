// 轮播插件



// 幻灯片插件
$.fn.extend({
	slides: function(opts) {

		opts = jQuery.extend({name:'slides',speed:300,start:0,auto:true,interval:5000}, opts || {});//默认参数
		
		return this.each(function(){

			var $this = $(this);
			var item = $this.find('li').not(':first-child').hide().end();
			var idx = opts.start;
			var size = item.length;
			var interval = false;
			
			var crl = $('<div/>').addClass(opts.name+'_crl').html('123456789'.substr(0,size).replace(/(\d)/g,"<b>$1</b>")).appendTo($this).children('b').eq(opts.start).addClass('on').end();
			

			var anim = function(form,to){

				item.stop(true,true);

				item.eq(form).fadeOut(opts.speed);
				item.eq(to).fadeIn(opts.speed);

				crl.eq(form).removeClass('on').end().eq(to).addClass('on');

				idx = to;
			}


			//动画	
			var next = function(){	
				anim(idx,++idx >= size ? 0 : idx);
			}

			var prev = function(){
				anim(idx,--idx <=0  ? 0 : idx);
			}


			if(opts.auto){
				interval = setInterval(next,opts.interval);
			}


			$this.on({mouseenter:function(){
				// 暂停
				interval = interval && clearInterval(interval) && false;
			},mouseleave:function(){
				// 启动
				interval = interval || setInterval(next,opts.interval);
			}});



			crl.on('click',function(){

				// 重置
				interval && clearInterval(interval);
				interval =  setInterval(next,opts.interval);
				anim(idx,crl.index($(this)));

				return false;
			})

		});
	}
});


$(function(){


	$('.banner').slides({name:'slide',interval:5000,speed:1000});


	// checkcode
	var checkcode = $('.checkcode').on('click',function(){
		$(this).children('img').attr('src','http://card.anzipay.com:8087/authImg?type=loginCode&id='+ (new Date).getTime() );
	});



	// 异步提交文件
	$('.login form').ajaxForm({
		type:'POST',
		dataType:'json',
		beforeSubmit:function(data,form){
			var check = form.find('input,textarea,select').filter('[check]').filter(':visible').filter(function(){
				var the = $(this);
				return !the.siblings('i').is('.form-note-success') && !the.formCheck();
			});

			if(check.length>0){check[0].focus();return false;}
			loading.show();
		},
		success: function(data) {

			loading.hide();
			if(data.status && data.status === '200'){
				if(data.url){
					window.location.href = data.url;
				}else{
					location.reload();
				}
			}else{
				checkcode.trigger('click');
				alert(data.message);
			}

		}

	});







});

	
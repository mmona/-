$(function(){
	var boxwidth=$('.content ').width();
	$('.nocomplete').fadeOut();
	$("#tab2").click(function(){
		$('.complete').fadeOut();
		$(this).addClass('on').siblings().removeClass('on');
		debugger
		
		$('.nocomplete').stop().animate({
			left:0
		}).fadeIn();

	});
	$("#tab1").click(function(){
		$('.nocomplete').fadeOut();
		$(this).addClass('on').siblings().removeClass('on');
		debugger
		$('.complete ').stop().animate({
			left:0
		}).fadeIn();
		

	});
	
});
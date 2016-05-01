
$(function(){
	/*add "back to top" button to all page*/
	$('body').append('<a href="javascript:void(0);" class="back-top pull-right jq-back-to-top" style="display: none;">回到顶部</a>');
	$(document).on('click', '.jq-back-to-top', function(){
		$('html, body').animate({
			"scrollTop":0
		},'slow');
		$('.jq-back-to-top').css("background-color","#ce1126");
	});
	$(window).on('scroll', function(){
		if($(document).scrollTop() >= 10){
			$('.jq-back-to-top').fadeIn();
		}else{
			$('.jq-back-to-top').fadeOut();
		}
	});


	//内容介绍---限制字符个数
	$('.text-length-limit').each(function(){
		var maxwidth=200;
		var this_width = $(this).text().length;
		if(this_width > maxwidth){
			$(this).text($(this).text().substring(0,maxwidth));
			$(this).html($(this).html()+'...');
		}
	});
	
	
	
	//header switch class style
	$('#my-navbar>.my-fun-nav>li').click(function(e){
        $(this).addClass('active').siblings('li').removeClass('active');
        //close the $('#my-navbar')
        $('#my-navbar').fadeToggle();
    });
    //make every page's navbar toggle
    $('.my-navbar-toggle').click(function(){
        $('#my-navbar').toggle();
    });
    
});
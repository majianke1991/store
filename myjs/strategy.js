$(function(){
	$('.one-strategy-intro').each(function(index){
		$(this).hover(function(){
			$('.one-strategy-intro .strategy-object').eq(index).animate({
				width: '300px',
				height: '250px',
				left: '-42px',
				top: '-25px'
				
			},'slow');
		}, function(){
			$('.one-strategy-intro .strategy-object').eq(index).animate({
				width: '216px',
				height: '200px',
				left: '0',
				top: '0',	
			},'slow');
		});
	});
	
	
	//toggle the header style
    $('#my-navbar>.my-fun-nav>li').each(function(){
    	var _this = $(this);
    	var data_id = _this.find('a').attr("data_id");
    	if(data_id == 'strategy'){
    		_this.addClass('active').siblings('li').removeClass('active');
    	}
    });
});
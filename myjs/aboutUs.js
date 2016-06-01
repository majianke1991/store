/**
 * Created by jessietang on 11/23/2015.
 */
$(function(){
    var w = $('.about-matetrip').width();
    $('.documentationfixed').css("left",w+'px');
    $(document).scroll(function(e){
        $('#myaffix>li>a').click(function(){
            $(this).parent().addClass('active').siblings('li').removeClass('active');
        });
        //$('#myScrollspy').
        console.log('1');
        var e = e || window.event;
        var scrollH = $(document).scrollTop();
        var headerH = $('.about-matetrip').position().top;
        console.log(scrollH+','+headerH);
        if(scrollH > headerH || scrollH == headerH){
            //alert('a');
            $('#myaffix').addClass('documentationfixed');
            $('#content').addClass('col-md-offset-4');
        }else{
            $('#myaffix').removeClass('documentationfixed');
            $('#content').removeClass('col-md-offset-4');
        }
    });
    
  //toggle the header style
    $('#my-navbar>.my-fun-nav>li').each(function(){
    	var _this = $(this);
    	var data_id = _this.find('a').attr("data_id");
    	if(data_id == 'aboutUs'){
    		_this.addClass('active').siblings('li').removeClass('active');
    	}
    });
});
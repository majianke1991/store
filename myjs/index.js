/**
 * Created by jessietang on 11/17/2015.
 */
$(function(){
    $('.carousel').carousel();
    $('#my-navbar>.my-fun-nav>li').click(function(){
        $(this).addClass('active').siblings('li').removeClass('active');
        //close the $('#my-navbar')
        $('#my-navbar').fadeToggle();
    });
    //make every page's navbar toggle
    $('.my-navbar-toggle').click(function(){
        $('#my-navbar').toggle();
    });
    
    
    $('#my-navbar>.my-fun-nav>li').each(function(){
    	var _this = $(this);
    	var data_id = _this.find('a').attr("data_id");
    	if(data_id == 'index'){
    		_this.addClass('active').siblings('li').removeClass('active');
    	}
    });

});
//ajax
function ajaxPageSet(url){
    $.ajax({
        url:url,
        type:'get',
        dataType:'html',
        success:function(data){
            $('.ajaxPage').html(data);
        }
    });
}
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
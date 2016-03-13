/**
 * Created by rain on 2016/3/13.
 */
$(function(){
    /*travelSharing right carousel*/
    $('.sharing-img-right').hover(function(){
        $('.btn-direction').css("opacity","1");
    }, function(){
        $('.btn-direction').css("opacity","0");
    });
    var liLen = $('.sharing-img-one').find('li').length;
    var ulHeight = 80 * liLen + 'px';
    var addLen = liLen - 5;
    $('.sharing-img-one').css("height",ulHeight);
    console.log(ulHeight);
    var now = 0;
    function tab(index){
        $('.sharing-img-one').animate({
            "top": -80*index
        });
    }
    $('.btn-down').on('click', function(){
        now = now + 1;
        if(now >= addLen) {
            now = 0;
        }
        tab(now);
    });
    $('.btn-up').on('click', function(){

        now = now - 1;
        console.log(now);
        if(now < 0) {
            now = addLen;
        }
        tab(now);
    });
});
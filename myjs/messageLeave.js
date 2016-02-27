$(function(){
    //.input-box gain the focus
    $('.input-box').focus(function(){
        var input = $(this);
        input.hide();
        input.next('.about-comment').show();
        var _textArea_box = input.next('.about-comment').find('.textArea-box');
        _textArea_box.focus();
        //.textArea-box lose the focus, judge whether there are content in .textArea-box
        _textArea_box.blur(function(){
            if(_textArea_box.val() == ''){
                input.next('.about-comment').hide();
                input.show();
            }
        });
    });

    $('.comment').click(function(){
        var _comment = $(this);
        var input_comment = _comment.parent('.time-comment').next('.reply-box').find('.input-box');
        if(input_comment){
            input_comment.hide();
            var _about_comment = _comment.parent('.time-comment').next('.reply-box').find('.about-comment');
            _about_comment.show();
            var _textAreaBox = _about_comment.find('.textArea-box');
            _textAreaBox.focus();
            _textAreaBox.blur(function(){
                if(_textAreaBox.val() == ''){
                    //alert(_textArea_comment.val());
                    _about_comment.hide();
                    input_comment.show();
                }
            });
        }

    });
});
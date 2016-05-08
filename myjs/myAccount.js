$(function(){
	/*upload photo*/
	$('.myphoto').hover(function(){
		$('.upload-photo').removeClass("hidden");
	},function(){
		$('.upload-photo').addClass("hidden");
	});
	
	
	/*save edit profilt*/
	//init
	$('.jq-profile-password').hide();
	//add 'click' event
	$(document).on('click', '.jq-modify-password', function(){
		if($('.jq-modify-password').prop("checked")){
			
			$('.jq-profile-password').removeClass("hidden").slideDown();
		}else{
			$('.jq-profile-password').slideUp();
		}
	});
	
	
	/*popup*/
	$(document).on('click','.jq-activity-edit', function(event){
		//click edit
		event.preventDefault();
		$('.popup-activity-edit').removeClass("hidden").show();
	}).on('click', '.jq-edit-cancel', function(){
		//click cancel
		$('.popup-activity-edit').hide();
	}).on('click', '.jq-edit-save', function(){
		//click save
		$('.popup-activity-edit').hide();
	});

	$(document).on('click','.jq-sharing-edit', function(event){
		//click edit
		event.preventDefault();
		$('.popup-sharing-edit').removeClass("hidden").show();
	}).on('click', '.jq-sharing-cancel', function(){
		//click cancel
		$('.popup-sharing-edit').hide();
	}).on('click', '.jq-sharing-save', function(){
		//click save
		$('.popup-sharing-edit').hide();
	});
	

	
});
function myAccountLoad(url){
	$.ajax({
		url: url,
		type: 'post',
		success: function(data){
			$('.jq-myAccount-right').html(data);
		}
	});
}

function delHD(id,_this){
	
	var current = $(_this);
	$.ajax({
		url:'/store/DeleteHDorShare?hid='+id,
		type: 'post',
		success: function(data){
			var thisTr = current.parent().parent();
			thisTr.remove();
		}
	})
}
function delShare(id,_this){
	
	var current = $(_this);
	$.ajax({
		url:'/store/DeleteHDorShare?sid='+id,
		type: 'post',
		success: function(data){
			var thisTr = current.parent().parent();
			thisTr.remove();
		}
	})
}
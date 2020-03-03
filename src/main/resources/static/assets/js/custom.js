//$(document).ready(function(){
//
//$(document).on("click",".domainInfo",function(){
//  $("#domainInfo").modal();
//});
//
//$(document).on('click','.orgInfo',function(){
//  $('#orgInfo').modal();
//});
//
//$(document).on('click','.peForm',function(){
//  $('#peForm').modal();
//});
//
//$(document).on('click','.qryForm',function(){
//  $('#qryForm').modal();
//});
//
//$(document).on('click','.taxForm',function(){
//  $('#taxForm').modal();
//});
//
//$(document).on('click','.usrDetail',function(){
//  $('#usrDetail').modal();
//});
//
//$(document).on('click','.deactiveRecord',function(){
//  $('#deactiveRecord').modal();
//});

$('#proformaForm').submit(function(e){e.preventDefault();
	console.log($(this).serialize());
	var formData1 = new FormData($('#proformaForm')[0]);
	var form = this;
	e.preventDefault();
	var formData = {}
	$.each(this, function(i, v){
		var input = $(v);
		formData[input.attr("name")] = input.val();
	});
	console.log(JSON.stringify(formData1));
	$.ajax({
		url: '/saverecord',
		type: 'POST',
		contentType: "application/json",
		data: JSON.stringify(formData1),
		dataType: 'json'
	}).done(function(data){ 
		console.log(data);
		var formResp=data['succesMessage'];
		if(formResp == 'SUccess' ){
			$('.uploadProformaDocs').show();
			$('.serverResponse').fadeOut('slow', function(){ 
				$('.serverResponse').fadeIn('slow').html('<div class="alert alert-success">Success : Your Form has been submitted successfully</div>'); 
				$('input[name="hidden_piNumber"]').val(data['piNumber']);
				$('.serverResponse').fadeOut(10000); });
		}
	})
	.fail(function(){
		$('.serverResponse').fadeIn('slow').html('<div class="alert alert-danger">Something Went Wrong..</div>'); $(".serverResponse").fadeOut(10000);
	});
});

//$(document).on('submit','#proFormaDocs',function(e){
//	console.log('doc uploaded');
//	var formData1 = new FormData($(this)[0]);
//
//	var piNumber = $('input[name="hidden_piNumber"]').val();
//	console.log('/uploadFile/'+piNumber);
//	$.ajax({
//		url: '/uploadFile/'+piNumber,
//		type: 'POST',
//		data: formData1,
//		contentType: false,
//		//cache: false, 
//		processData: false, 
//		dataType: 'json'
//	}).done(function(data){ 
//		console.log(data);
//		var formResp=data['succesMessage'];
//		if(formResp == 'SUccess' ){
//
//			$('.fileResponse').fadeOut('slow', function(){ 
//				$('.fileResponse').fadeIn('slow').html('<div class="alert alert-success">Success : Your Form has been submitted successfully</div>'); 
//				$('.fileResponse').fadeOut(10000); });
//		}
//	})
//	.fail(function(){
//		$('.fileResponse').fadeIn('slow').html('<div class="alert alert-danger">Something Went Wrong..</div>'); $(".fileResponse").fadeOut(10000);
//	});
//});
//
//$('.uploadProformaDocs').click(function(){
//	$("#UploadDocs").modal();
//});
//
//$('select[name="searchCriteria"]').change(function(){
//	var sCriteria = $(this).val();
//	if(sCriteria == 'domain'){
//		let appendedHTML = 
//		'<div class="col-md-6">\
//			<div class="form-group">\
//				<div class="col-md-12">\
//					<select name="domainList" class="form-control">\
//						<option value="">--Select Domain--</option>\
//						<option value="domain1">Domain 1</option>\
//						<option value="domain2">Domain 2</option>\
//						<option value="domain3">Domain 3</option>\
//					</select>\
//				</div>\
//			</div>\
//		</div>';
//		$('.dynamicFilters').children('div:eq(1)').remove();
//		$('.dynamicFilters').children('div .col-md-12').addClass('col-md-6');
//		$('.dynamicFilters').children('div .col-md-6').removeClass('col-md-12');
//		$('.dynamicFilters').append(appendedHTML);
//	}
//	else if(sCriteria == "org"){
//		let appendedHTML = 
//		'<div class="col-md-6">\
//			<div class="form-group">\
//				<div class="col-md-12">\
//					<select name="orgList" class="form-control">\
//						<option value="">--Select Organisation--</option>\
//						<option value="org1">Organisation 1</option>\
//						<option value="org2">Organisation 2</option>\
//						<option value="org3">Organisation 3</option>\
//					</select>\
//				</div>\
//			</div>\
//		</div>';
//		$('.dynamicFilters').children('div:eq(1)').remove();
//		$('.dynamicFilters').children('div .col-md-12').addClass('col-md-6');
//		$('.dynamicFilters').children('div .col-md-6').removeClass('col-md-12');
//		$('.dynamicFilters').append(appendedHTML);
//	}
//	else if(sCriteria == "pi"){
//		
//		let appendedHTML = 
//		'<div class="col-md-6">\
//			<div class="form-group">\
//				<div class="col-md-12">\
//					<input class="form-control input-daterange-datepicker" type="text" name="daterange" value="02/19/2020 - 02/19/2020" placceholde="Click here to select a dante range"/>\
//				</div>\
//			</div>\
//		</div>';
//		$('.dynamicFilters').children('div:eq(1)').remove();
//		$('.dynamicFilters').children('div .col-md-12').addClass('col-md-6');
//		$('.dynamicFilters').children('div .col-md-6').removeClass('col-md-12');
//		$('.dynamicFilters').append(appendedHTML);
//	}
//	console.log(sCriteria);
//});
//
//});
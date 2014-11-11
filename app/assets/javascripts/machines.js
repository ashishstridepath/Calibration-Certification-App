$(document).ready(function() {
	$("td[data-open]").click(function() {
		console.log('row clicked');
		link = $(this).data('open');
		window.location = link
	});

	$('a[data-popup]').on('click', function(e) { 
		window.open($(this).attr('href'), "_blank", "toolbar=yes, scrollbars=yes, resizable=yes"); 
		e.preventDefault(); 
	});

	if ($("#machine_multiRange").is(":checked")){
		$("#multiRange").show(); 
	}
	else {
		$("#multiRange").hide(); 
	}
	

	$("#machine_multiRange").change(function (){
		if ($("#machine_multiRange").is(":checked")){
			$("#multiRange").show();
		}
		else {
			$("#multiRange").hide();
		}
	});

	$('#selectAll').click(function() {
		if (this.checked) {
			$(':checkbox').each(function() {
				this.checked = true;                        
			});
		} else {
			$(':checkbox').each(function() {
				this.checked = false;                        
			});
		} 
	});
});
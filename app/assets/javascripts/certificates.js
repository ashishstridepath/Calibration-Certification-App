$(document).ready(function() {

	
	$(document).on('shown.bs.modal','#certificate-modal-window',function(event){
		console.log("modal shown");
		// Check test Point 1 
		$(document).on('blur','#certificate_as_found_testpoint_1',function(event){
		

			load = document.getElementById("certificate_testpoint_1").value;
			reading = document.getElementById("certificate_as_found_testpoint_1").value;
			num = reading - load;
				document.getElementById("certificate_as_found_testpoint_1_dev").value= parseFloat(num.toFixed(6));
		});

		$(document).on('blur','#certificate_as_found_testpoint_2',function(event){
		

			load = document.getElementById("certificate_testpoint_2").value;
			reading = document.getElementById("certificate_as_found_testpoint_2").value
			num = reading - load
				document.getElementById("certificate_as_found_testpoint_2_dev").value= parseFloat(num.toFixed(6));
		});

		$(document).on('blur','#certificate_as_found_testpoint_3',function(event){
		

			load = document.getElementById("certificate_testpoint_3").value;
			reading = document.getElementById("certificate_as_found_testpoint_3").value;
			num = reading - load;
				document.getElementById("certificate_as_found_testpoint_3_dev").value= parseFloat(num.toFixed(6));
		});

		$(document).on('blur','#certificate_as_found_testpoint_4',function(event){
		

			 load = document.getElementById("certificate_testpoint_4").value;
			 reading = document.getElementById("certificate_as_found_testpoint_4").value
			 num = reading - load;
				document.getElementById("certificate_as_found_testpoint_4_dev").value= parseFloat(num.toFixed(6));
		});
		$(document).on('blur','#certificate_as_found_testpoint_5',function(event){
		

			load = document.getElementById("certificate_testpoint_5").value;
			reading = document.getElementById("certificate_as_found_testpoint_5").value;
			num = reading - load;
				document.getElementById("certificate_as_found_testpoint_5_dev").value= parseFloat(num.toFixed(6));
		});
		$(document).on('blur','#certificate_as_found_testpoint_6',function(event){
		

			load = document.getElementById("certificate_testpoint_6").value;
			reading = document.getElementById("certificate_as_found_testpoint_6").value
			num = reading - load
				document.getElementById("certificate_as_found_testpoint_6_dev").value= parseFloat(num.toFixed(6));
		});

		// END OF LOADING CALCULATIONS
		// START OF UNLOADING CALCULATIONS 

		
		
		
	
		// END OF AS FOUND CALCULATIONS






		$(document).on('blur','#certificate_definitive_testpoint_1',function(event){
		

			load = document.getElementById("certificate_testpoint_1").value;
			reading = document.getElementById("certificate_definitive_testpoint_1").value;
			num = reading - load;
				document.getElementById("certificate_definitive_testpoint_1_dev").value= parseFloat(num.toFixed(6));
		});

		$(document).on('blur','#certificate_definitive_testpoint_2',function(event){
		

			load = document.getElementById("certificate_testpoint_2").value;
			reading = document.getElementById("certificate_definitive_testpoint_2").value;
			num = reading - load;
				document.getElementById("certificate_definitive_testpoint_2_dev").value= parseFloat(num.toFixed(6));
		});

		$(document).on('blur','#certificate_definitive_testpoint_3',function(event){
		
			load = document.getElementById("certificate_testpoint_3").value;
			reading = document.getElementById("certificate_definitive_testpoint_3").value;
			num = reading - load;
				document.getElementById("certificate_definitive_testpoint_3_dev").value= parseFloat(num.toFixed(6));
		});

		$(document).on('blur','#certificate_definitive_testpoint_4',function(event){
		

			load = document.getElementById("certificate_testpoint_4").value;
			reading = document.getElementById("certificate_definitive_testpoint_4").value;
			num = reading - load;
				document.getElementById("certificate_definitive_testpoint_4_dev").value= parseFloat(num.toFixed(6));
		});

		$(document).on('blur','#certificate_definitive_testpoint_5',function(event){
		

			load = document.getElementById("certificate_testpoint_5").value;
			reading = document.getElementById("certificate_definitive_testpoint_5").value;
			num = reading - load;
			
				document.getElementById("certificate_definitive_testpoint_5_dev").value= parseFloat(num.toFixed(6));
		});
		$(document).on('blur','#certificate_definitive_testpoint_6',function(event){
		

			load = document.getElementById("certificate_testpoint_6").value;
			reading = document.getElementById("certificate_definitive_testpoint_6").value;
			num = reading - load;
			
				document.getElementById("certificate_definitive_testpoint_6_dev").value= parseFloat(num.toFixed(6));
		});

		// END OF LOADING CALCULATIONS
	});
});
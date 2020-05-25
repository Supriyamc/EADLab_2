$(document).ready(function(){
	var faculty_id = $("#faculty_id").val();
	$.post("el_load" ,{faculty_id :faculty_id},  function(result){
		console.log(result);
		var js_arr = JSON.parse(result);
		console.log(result);
		//alert(js_arr[0].cl);
		var bal_leave = js_arr[0].el - js_arr[0].avail_el;
		//alert(bal_leave);
		$("#total_leave").val(js_arr[0].el);
		$("#balance_leave").val(bal_leave);
		$("#availed_leave").val(js_arr[0].avail_el);
		$("#faculty_id").val(js_arr[0].faculty_id);
		//alert(js_arr[0].faculty_id);
	});
	//alert("hi");
	$("#earned_leave").click(function(){
		//alert("hello");
		
		var bal_el = $("#balance_leave").val();
		var total_leave_appl = $("#total_leave_appl").val();
		var no_el =  $("#total_leave_appl").val();
		var el = $("#total_leave").val();
		var faculty_id = $("#faculty_id").val();
	
		
		if(bal_el == 10) {
			
		
		var avail_el = no_el;
	}
		else {
			var avail_el = $("#availed_leave").val();
			parseInt(avail_el);
			parseInt(total_leave_appl);
			//alert(typeof(avail_cl));
			//alert(typeof(total_leave_appl));
			avail_el = parseInt(avail_el) + parseInt(total_leave_appl);
			//alert(avail_el);
			
		}
		$.post("el_count", {el : el , avail_el : avail_el , bal_el : bal_el , no_el :no_el , faculty_id : faculty_id  } ,  function(result){
			
		});
	});
	});
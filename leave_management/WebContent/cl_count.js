$(document).ready(function(){
	var faculty_id = $("#faculty_id").val();
	$.post("cl_load" ,{faculty_id :faculty_id},  function(result){
		console.log(result);
		var js_arr = JSON.parse(result);
		console.log(result);
		//alert(js_arr[0].cl);
		var bal_leave = js_arr[0].cl - js_arr[0].avail_cl;
		//alert(bal_leave);
		$("#total_leave").val(js_arr[0].cl);
		$("#balance_leave").val(bal_leave);
		$("#availed_leave").val(js_arr[0].avail_cl);
		$("#faculty_id").val(js_arr[0].faculty_id);
		//alert(js_arr[0].faculty_id);
	});
	//alert("hi");
	$("#casual_leave").click(function(){
		//alert("hello");
		
		var bal_cl = $("#balance_leave").val();
		var total_leave_appl = $("#total_leave_appl").val();
		var no_cl =  $("#total_leave_appl").val();
		var cl = $("#total_leave").val();
		var faculty_id = $("#faculty_id").val();
	
		
		if(bal_cl == 15) {
			
		
		var avail_cl = no_cl;
	}
		else {
			var avail_cl = $("#availed_leave").val();
			parseInt(avail_cl);
			parseInt(total_leave_appl);
			//alert(typeof(avail_cl));
			//alert(typeof(total_leave_appl));
			avail_cl = parseInt(avail_cl) + parseInt(total_leave_appl);
			//alert(avail_cl);
			
		}
		$.post("cl_count", {cl : cl , avail_cl : avail_cl , bal_cl : bal_cl , no_cl :no_cl , faculty_id : faculty_id  } ,  function(result){
			
		});
	});
	});
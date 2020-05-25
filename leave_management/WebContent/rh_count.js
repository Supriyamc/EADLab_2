$(document).ready(function(){
	var faculty_id = $("#faculty_id").val();
	$.post("rh_load" ,{faculty_id :faculty_id},  function(result){
		console.log(result);
		var js_arr = JSON.parse(result);
		console.log(result);
		//alert(js_arr[0].cl);
		var bal_leave = js_arr[0].rh - js_arr[0].avail_rh;
		//alert(bal_leave);
		$("#total_leave").val(js_arr[0].rh);
		$("#balance_leave").val(bal_leave);
		$("#availed_leave").val(js_arr[0].avail_rh);
		$("#faculty_id").val(js_arr[0].faculty_id);
		//alert(js_arr[0].faculty_id);
	});
	//alert("hi");
	$("#ristricted_leave").click(function(){
		//alert("hello");
		
		var bal_rh = $("#balance_leave").val();
		var total_leave_appl = $("#total_leave_appl").val();
		var no_rh =  $("#total_leave_appl").val();
		var rh = $("#total_leave").val();
		var faculty_id = $("#faculty_id").val();
	
		
		if(bal_rh == 2) {
			
		
		var avail_rh = no_rh;
	}
		else {
			var avail_rh = $("#availed_leave").val();
			parseInt(avail_rh);
			parseInt(total_leave_appl);
			//alert(typeof(avail_cl));
			//alert(typeof(total_leave_appl));
			avail_rh = parseInt(avail_rh) + parseInt(total_leave_appl);
			//alert(avail_rh);
			
		}
		$.post("rh_count", {rh : rh , avail_rh : avail_rh , bal_rh : bal_rh , no_rh :no_rh , faculty_id : faculty_id  } ,  function(result){
			
		});
	});
	});
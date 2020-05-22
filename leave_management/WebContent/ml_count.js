$(document).ready(function(){
	
	$.get("ml_count" ,  function(result){
		var js_arr = JSON.parse(result);
		//alert(js_arr[0].ml);
		var bal_leave = js_arr[0].ml- js_arr[0].avail_ml;
		$("#total_leave").val(js_arr[0].ml);
		$("#balance_leave").val(bal_leave);
		$("#availed_leave").val(js_arr[0].avail_ml);
	});
	//alert("hi");
	$("#maternity_leave").click(function(){
		//alert("hello");
		
		var bal_ml = $("#balance_leave").val();
		var total_leave_appl = $("#total_leave_appl").val();
		var no_ml=  $("#total_leave_appl").val();
		var ml= $("#total_leave").val();
		
		if(bal_ml == 15) {
			
		
		var avail_ml= no_ml;
	}
		else {
			var avail_ml= $("#availed_leave").val();
			parseInt(avail_ml);
			parseInt(total_leave_appl);
			//alert(typeof(avail_ml));
			//alert(typeof(total_leave_appl));
			avail_ml= parseInt(avail_ml) + parseInt(total_leave_appl);
			alert(avail_ml);
			
		}
		$.post("ml_count", {ml: ml, avail_ml: avail_ml, bal_ml : bal_ml , no_ml:no_ml } ,  function(result){
			
		});
	});
	});
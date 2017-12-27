function search(){
	debugger;
	$('#table').find("tr:last").remove();
}

$(document).ready(function() { 
	$("input[type='checkbox']").change(function(){
	debugger;
	// $("tr").toggleClass("active");
	 // $('#table :checkbox').parent().parent().toggleClass("active");
	 if ($(this).checked) {

	 }
	$(this).parent().parent().toggleClass("active");
});
// put all your jQuery goodness in here. 
}); 
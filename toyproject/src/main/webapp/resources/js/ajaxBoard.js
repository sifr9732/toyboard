$(function(){

	$.ajax({
		url:"/ajaxBoard" ,
		type:"post",
		dataType: "json",
		success:function(data) {
			var list ="";
			$.each(data, function(index, item) {
				list += item.fab_seq ;
				list += data.fab_title;
			})
			$("#ajax_list").html(list);
			
		}
	})
})

function AjaxSave() {
	
	$.ajax({
		url:"/ajaxBoardInsert" ,
		type:"post",
		success:function() {
			
		}
	})
}
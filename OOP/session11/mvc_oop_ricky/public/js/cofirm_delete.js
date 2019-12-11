function delete_id(id,object,list) {
	var check = confirm('Bạn có chắc chắn muốn xóa');
 	if(check == true) {
 		var link = 'index.php?action=delete_' + object + '&id='+id;
  	window.location.href = link;
 	}
 	else {
  	window.location.href = list;
 	}
}

// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_textboxCenterIni(){
	padding=20;
	if (!instance_exists(obj_textboxCenter)) {
	// Create
	var _tb = instance_create_layer(0, 0, "lyr_instances", obj_textboxCenter);
	instance_create_layer(room_width-(room_width/5), room_height-padding, "lyr_instances", obj_enterFloat);
	
	// Add messages to textbox's list
	var _list = _tb.messages;
	
	for (var i=0; i<array_length_1d(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list, _arr);
	}
}

}
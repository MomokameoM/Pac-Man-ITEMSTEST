/// @description accion botones
if!(press) exit;
if(texto=="Jugar"){
	global.fadeIn = layer_sequence_create("lyr_fade", room_width / 2, room_height / 2, sq_fadeIn3);
	global.fadeOut = sq_fadeOut3;
	global.button_room="Jugar";
}
if(texto=="Opciones"){
	//room_goto(rm_options);
}
if(texto=="Salir"){
	game_end();
}
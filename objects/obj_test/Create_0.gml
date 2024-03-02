/// @description 
// My messages
// Array order should match MSG enum order
/*
msg = [
	["Hey there!", "Rob", spr_textbox],
	["Hello! It's-a-me, player!", "Player", spr_textbox],
	["Player, that's a weird name.", "Rob", spr_textbox],
	["Well, anyway. Do you wanna earn some money? I've got quite the job for you!", "Rob", -1],
	["no", "Player", spr_textbox]
]
*/
instance_deactivate_all(true);

padding=20;
timer=0;
//startY=y;
if(room=rm_tuto){
	msg = [
		["Bienvenido a Pac-Man Remake, esta es una alpha de un proyecto que programo por diversion asi que solo gozalo. \nAhora va el tutorial para explicar el funcionamiento de los 4 fantasmas principales.", "BIENVENIDO!", -1],
		["Para moverte utiliza las flechas del teclado.", "CONTROLES BASICOS", spr_arrowKeys],
		["Presiona la tecla 'esc' para pausar el juego (en los momentos que este permitido).", "CONTROLES BASICOS", spr_escKey],
		["Pac-Man debera moverse por la habitacion esquivando a los fantasmas y reuniendo todos los puntos del nivel (sprite mostrado).", "MECANICAS BASICAS", spr_ptos],
		["Para pasar de nivel Pac-Man debera comer todos los puntos, power-up's y bonus del nivel.", "MECANICAS BASICAS", spr_ssNivel],
		["Tambien podras defenderte de los fantasmas con los power-up's que comas, el basico y principal es la 'Powerball' (sprite mostrado). Al comerlo los fantasmas se asustaran.", "MECANICAS BASICAS", spr_powerballs],
		["Cuando un fantasma este asustado seras capaz de comer a los fantasmas, conseguir mas ptos. y librarte de ellos por unos segundos.", "MECANICAS BASICAS", spr_enemy_scared],
		["Dependiendo el nivel, apareceran distintos bonus en lugares distintos del nivel. Comerlo te da mas puntos que los pts. normales, pero cuidado que aparecen y desaparecen cada cierto tiempo.", "MECANICAS BASICAS", spr_fruit],
		["Para propositos del tutorial y entender el comportamiento de los fantasmas, se mostrara una 'X' donde sea que la trayectoria del fantasma este fijada.", "TUTOTRIAL", spr_tutox],
		["El fantasma rojo te perseguira donde sea que estes todo el tiempo, a excepcion de cuando tengas la powerball y este asustado, al menos por ahora.", "FANTASMA ROJO", spr_redT],
		["Listo para empezar?.", "TUTORIAL", spr_player_right]	
	]
}else if(room=rm_tuto2){
	msg = [
		["El fantasma Azul tratara de interceptarte en direccion contraria del rojo, es decir,por delante.", "FANTASMA AZUL", spr_blueT],
		["Listo para empezar?.", "TUTORIAL", spr_player_right]	
	]
}else if(room=rm_tuto3){
	msg = [
		["El fantasma Rosa tratara de cortarte el camino por delante en todo momento.", "FANTASMA ROSA", spr_pinkT],
		["Listo para empezar?.", "TUTORIAL", spr_player_right]	
	]
}else if(room=rm_tuto4){
	msg = [
		["El fantasma Naranja te seguira todo el tiempo, pero tras acercarse un poco se volvera timido y se alejara.", "FANTASMA NARANJA", spr_orangeT],
		["Listo para empezar?.", "TUTORIAL", spr_player_right]	
	]
}else if(room=rm_tuto5){
	msg = [
		["Eso es todo por ahora.\nListo para empezar?.", "TUTORIAL", spr_player_right]	
	]
}



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
instance_destroy();

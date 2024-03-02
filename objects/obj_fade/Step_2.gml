 // Revisamos si estamos haciendo FadeIn y si la secuencia ha terminado
if (global.fadeIn != noone && layer_sequence_is_finished(global.fadeIn)) {
	// Vamos a la habitación que queremos, en este caso hacemos una rotación entre Room1 y Room2
	if(global.button_room == "Jugar"){
		room_goto(rm_tuto5);
	}
	// Limpiamos la variable fadeIn ya que ya no estamos haciendo transición
	global.fadeIn = noone;
}
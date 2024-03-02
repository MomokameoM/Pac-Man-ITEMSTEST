/*
 * Cuando inicia la habitación revisamos si tenemos que hacer fadeOut y si ese es el caso
 * entonces instanciamos la secuancia de fadeOut y limpiamos la variable
 */

if (global.fadeOut != noone) {
	layer_sequence_create("lyr_fade", room_width / 2, room_height / 2, global.fadeOut);
	global.fadeOut = noone;
}
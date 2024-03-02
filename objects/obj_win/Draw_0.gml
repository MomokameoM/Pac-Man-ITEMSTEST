/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//WIN
if(audio_is_playing(snd_win)){
	draw_set_halign(fa_center);
	draw_set_color(c_yellow);
	draw_set_valign(fa_top);
	draw_text_transformed(room_width/2,room_height/2,"YOU WIN",5,5,0);
}
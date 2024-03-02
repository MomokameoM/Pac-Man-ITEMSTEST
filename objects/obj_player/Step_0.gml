/// @description mov del personaje
if (global.Hit) or (audio_is_playing(snd_intro)) exit;

//global.playerDirection=direction;

if (speed>0){
	if (audio_is_playing(snd_chomp)==false){
		audio_play_sound(snd_chomp,50,1);
	}
}else{
	audio_stop_sound(snd_chomp);
}
	
if keyboard_check(vk_right) && place_free(x+1,y) && place_snapped(pix_snap,pix_snap){
	direction=0;//en grados
	speed=velocity;//velocidad por paso= cuadro
}
if keyboard_check(vk_left) && place_free(x-1,y) && place_snapped(pix_snap,pix_snap){
	direction=180;//en grados
	speed=velocity;//velocidad por paso= cuadro
}
if keyboard_check(vk_up) && place_free(x,y-1) && place_snapped(pix_snap,pix_snap){
	direction=90;//en grados
	speed=velocity;//velocidad por paso= cuadro
}
if keyboard_check(vk_down) && place_free(x,y+1) && place_snapped(pix_snap,pix_snap){
	direction=270;//en grados
	speed=velocity;//velocidad por paso= cuadro
}

//verficar direccion para cambiar sprite
if speed > 0 {
	image_speed=1;
}else{
	image_speed=0;
	image_index=0;
}
//Cambiar sprite dependiendo la direccion
switch(direction){
	case 0:
		sprite_index=spr_player_right;
		break;
	case 90:
		sprite_index=spr_player_up;
		break;
	case 180:
		sprite_index=spr_player_left;
		break;
	case 270:
		sprite_index=spr_player_down;
		break;
}

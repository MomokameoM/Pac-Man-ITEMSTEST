// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_playerDeathColi(){
	audio_stop_all();
	audio_play_sound(snd_death,80,0);
	speed = 0;
	global.Vidas-=1;
	sprite_index=spr_player_death;
	image_speed=1;
	global.Hit=true;
	
	with(obj_bonus) instance_destroy();
	
}
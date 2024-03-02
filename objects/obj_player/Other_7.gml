/// @description animacion de muerte
if(room = rm_gameover) exit;
if (sprite_index== spr_player_death){
	direction=0;
	image_speed=0;
	x=xstart;
	y=ystart;
	sprite_index= spr_player_right;
	image_index=0;
	global.Hit= false;
	
	audio_play_sound(snd_intro,80,0);
	instance_deactivate_object(obj_enemyBlue);
	instance_deactivate_object(obj_enemyPink);
	instance_deactivate_object(obj_enemyRed);
	instance_deactivate_object(obj_enemyOrange);

}

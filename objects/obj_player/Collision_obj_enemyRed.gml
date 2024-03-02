/// @description colision enemy

if(other.sprite_index==spr_enemy_scared){
	audio_play_sound(snd_eatghost,50,0);
	global.Ptos+=10;
	redEyes=instance_create_layer(other.x,other.y,"lyr_instances",obj_enemyEyesRed);
	with(other){
		x = 1344;
		y = 192;
		velocity=0;
		speed=velocity;
		sprite_index=spr_enemyRedRight;
		image_speed=0;
		image_index=0;
	}
}else if (global.Hit==false && (x=other.x || y=other.y)){//pacman muere
	scr_playerDeathColi();
	
	//reiniciar velocidad
	//room_speed = 50;
	//obj_control.alarm[1] = room_speed*20;
	
}
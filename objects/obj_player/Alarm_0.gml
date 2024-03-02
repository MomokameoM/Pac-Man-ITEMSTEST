/// @description tiempo del power up
global.PowerUp=false;
with(obj_enemyPink){
	if(sprite_index==spr_enemy_scared){
		image_speed=1;
	}
}
with(obj_enemyBlue){
	if(sprite_index==spr_enemy_scared){
		image_speed=1;
	}
}
with(obj_enemyRed){
	if(sprite_index==spr_enemy_scared){
		image_speed=1;
	}
}
with(obj_enemyOrange){
	if(sprite_index==spr_enemy_scared){
		image_speed=1;
	}
}
alarm[1] = room_speed*3.2;
/// @description fin del powerup

if(global.PowerUp) exit;
with(obj_enemyPink){
	image_speed=0;
	sprite_index= spr_enemyRedRight;
	image_index=0;
	velocity=4;
	mode= "caza";
}
with(obj_enemyBlue){
	image_speed=0;
	sprite_index= spr_enemyBlueRight;
	image_index=0;
	velocity=4;
	mode= "caza";
}
with(obj_enemyRed){
	image_speed=0;
	sprite_index= spr_enemyRedRight;
	image_index=0;
	velocity=4;
	mode= "caza";
}
with(obj_enemyOrange){
	image_speed=0;
	sprite_index= spr_enemyOrangeRight;
	image_index=0;
	velocity=4;
	mode= "caza";
}
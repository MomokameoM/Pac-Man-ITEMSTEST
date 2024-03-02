/// @description avanzar nivel
if(room == rm_test) exit;
if(room == rm_tuto) exit;
if(room = rm_gameover) exit;


if instance_exists(obj_enemyBlue){
 	instance_deactivate_object(obj_enemyBlue);
}
if instance_exists(obj_enemyPink){
 	instance_deactivate_object(obj_enemyPink);
}
if instance_exists(obj_enemyRed){
 	instance_deactivate_object(obj_enemyRed);
}
if instance_exists(obj_enemyOrange){
 	instance_deactivate_object(obj_enemyOrange);
}
scr_tutoMSGs();
scr_textboxCenterIni();
global.Hit = false;
global.PowerUp = false;
global.Bonus = false;

alarm[0] = room_speed*20;
alarm[1] = room_speed*20;

room_speed=50;
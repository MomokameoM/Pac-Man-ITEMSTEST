// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_deactivateGhosts(){
	if !instance_exists(obj_enemyBlue){
 		instance_activate_object(obj_enemyBlue);
	}
	if !instance_exists(obj_enemyRed){
 		instance_activate_object(obj_enemyRed);
	}
	if !instance_exists(obj_enemyPink){
 		instance_activate_object(obj_enemyPink);
	}
	if !instance_exists(obj_enemyOrange){
 		instance_activate_object(obj_enemyOrange);
	}
}
// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_powerballEfect(){
	var distance_to_pacman=point_distance(x,y,obj_player.x,obj_player.y);
	sprite_index= spr_enemy_scared;
	image_speed=0;
	image_index=0;
	velocity=2;
	mode= "escape";
	if(distance_to_pacman<192){
			switch(direction){
				case 0: direction=180;break;
				case 90: direction=270;break;
				case 180: direction=0;break;
				case 270: direction=90;break;
			}
		}
}
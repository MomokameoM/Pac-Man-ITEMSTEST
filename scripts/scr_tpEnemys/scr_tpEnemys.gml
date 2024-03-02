// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_tpEnemys(){
	if(x<0){
		x= room_width+ sprite_xoffset;
	}
	if(x>room_width){
		x= -sprite_width+ sprite_xoffset;
	}
	if(y>room_height){
		y= -sprite_height+ sprite_yoffset;
	}
	if(y<0){
		y= room_height+ sprite_yoffset;
	}
}
// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_tp(){
	if(x<0 && hspeed<0)x= room_width+ sprite_xoffset;
	if(x>room_width && hspeed>0)x= -sprite_width+ sprite_xoffset;
	if(y>room_height && vspeed>0)y= -sprite_height+ sprite_yoffset;
	if(y<0 && vspeed<0)y= room_height+ sprite_yoffset;
}
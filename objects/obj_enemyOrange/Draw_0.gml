/// @description TEST de posicion
draw_self();
var dx=obj_player.x;
var dy=obj_player.y;
//timido
if(point_distance(x,y,obj_player.x,obj_player.y)<256){
	dx=64;
	dy=896;
}
draw_set_color(c_orange);
draw_text(dx+30,dy+20,"X");
/// @description TEST de posicion

var xdirs=[192,-192,-192,0];
var ydirs=[0,-192,0,192];
var dx= xdirs[obj_player.direction/90];
var dy= ydirs[obj_player.direction/90];
draw_self();
draw_set_color(make_color_rgb(254,184,198));
draw_text(obj_player.x+dx,obj_player.y+dy,"X");
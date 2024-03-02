/// @description TEST de posicion
var xdirs=[128,-128,-128,0];
		var ydirs=[0,-128,0,128];
		var dx= obj_player.x + xdirs[obj_player.direction/90];
		var dy=obj_player.y + ydirs[obj_player.direction/90];
		//dx,dy esta 2 tiles delante de pacman
		var ddx= obj_enemyRed.x-dx;
		var ddy= obj_enemyRed.y-dy;
		dx-=ddx;
		dy-=ddy;
		
		
draw_self();
draw_set_color(c_blue);
draw_text(dx,dy,"X");
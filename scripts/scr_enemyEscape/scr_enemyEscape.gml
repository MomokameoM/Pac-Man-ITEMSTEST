// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_enemyEscape(){
		var new_direction=-1;
		var distance_to_pacman=point_distance(x,y,obj_player.x,obj_player.y);
		
		//ESQUINA SUPERIOR IZQ
		if (place_meeting(x, y-2, walls) && place_meeting(x-2, y, walls)){
				var dista = point_distance(x+20,y,obj_player.x,obj_player.y);
				var distb = point_distance(x,y+20,obj_player.x,obj_player.y);
				if(dista<distb){
					new_direction=0;
					distance_to_pacman=dista;
				}else{
					new_direction=270;
					distance_to_pacman=distb;
				}
			}
		//ESQUINA SUPERIOR DERECHA
		if (place_meeting(x, y-2, walls) && place_meeting(x+2, y, walls)){
				var dista = point_distance(x-20,y,obj_player.x,obj_player.y);
				var distb = point_distance(x,y+20,obj_player.x,obj_player.y);
				if(dista<distb){
					new_direction=180;
					distance_to_pacman=dista;
				}else{
					new_direction=270;
					distance_to_pacman=distb;
				}
			}
			//ESQUINA INFERIOR DERECHA
		if (place_meeting(x, y+2, walls) && place_meeting(x+2, y, walls)){
				var dista = point_distance(x-20,y,obj_player.x,obj_player.y);
				var distb = point_distance(x,y-20,obj_player.x,obj_player.y);
				if(dista<distb){
					new_direction=180;
					distance_to_pacman=dista;
				}else{
					new_direction=90;
					distance_to_pacman=distb;
				}
			}
			//ESQUINA INFERIOR IZQ
		if (place_meeting(x, y+2, walls) && place_meeting(x-2, y, walls)){
				var dista = point_distance(x+20,y,obj_player.x,obj_player.y);
				var distb = point_distance(x,y-20,obj_player.x,obj_player.y);
				if(dista<distb){
					new_direction=0;
					distance_to_pacman=dista;
				}else{
					new_direction=90;
					distance_to_pacman=distb;
				}
			}
		//right
		if(direction != 180){
			if (place_meeting(x+2, y, walls) == false){
				var dist = point_distance(x+20,y,obj_player.x,obj_player.y);
				if(dist>distance_to_pacman){
					new_direction=0;
					distance_to_pacman=dist;
				}
			}
		}
		//UP
		if(direction != 270){
			if (place_meeting(x, y-2, walls) == false){
				var dist = point_distance(x,y-20,obj_player.x,obj_player.y);
				if(dist>distance_to_pacman){
					new_direction=90;
					distance_to_pacman=dist;
				}
			}
		}
		//LEFT
		if(direction != 0){
			if (place_meeting(x-2, y, walls) == false){
				var dist = point_distance(x-20,y,obj_player.x,obj_player.y);
				if(dist>distance_to_pacman){
					new_direction=180;
					distance_to_pacman=dist;
				}
			}
		}
		//DOWN
		if(direction != 90){
			if (place_meeting(x, y+2, walls) == false){
				var dist = point_distance(x,y+20,obj_player.x,obj_player.y);
				if(dist>distance_to_pacman){
					new_direction=270;
					distance_to_pacman=dist;
				}
			}
		}
	
		if(new_direction!= -1){
			direction = new_direction;
			if!(audio_is_playing(snd_inter)){
				sprite_index=(IMAGES[direction/90]);
			}
		}
	
		move_contact_solid(direction,velocity);

}
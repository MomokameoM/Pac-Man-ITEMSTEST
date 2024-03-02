// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_spawnRoute(){
	new_direction=-1;
		distance_to_spawn=99999;
		//ESQUINA DE U
		if (place_meeting(x, y+2, obj_pared) && place_meeting(x-2, y, obj_pared) && place_meeting(x+2, y, obj_pared)){
				new_direction=90;
				}
		//ESQUINA DE >
		if (place_meeting(x, y+2, obj_pared) && place_meeting(x+2, y, obj_pared) && place_meeting(x, y-2, obj_pared)){
				new_direction=180;
				}
		//ESQUINA DE <
		if (place_meeting(x, y+2, obj_pared) && place_meeting(x-2, y, obj_pared) && place_meeting(x, y-2, obj_pared)){
				new_direction=0;
				}
		//UP
		if(direction != 270){
			if (place_meeting(x, y-2, obj_pared) == false){
				var dist = point_distance(x,y-20,obj_spawnalert.x,obj_spawnalert.y);
				if(dist<distance_to_spawn){
					new_direction=90;
					distance_to_spawn=dist;
				}
			}
		}
		//LEFT
		if(direction != 0){
			if (place_meeting(x-2, y, obj_pared) == false){
				var dist = point_distance(x-20,y,obj_spawnalert.x,obj_spawnalert.y);
				if(dist<distance_to_spawn){
					new_direction=180;
					distance_to_spawn=dist;
				}
			}
		}
		//DOWN
		if(direction != 90){
			if (place_meeting(x, y+2, obj_pared) == false){
				var dist = point_distance(x,y+20,obj_spawnalert.x,obj_spawnalert.y);
				if(dist<distance_to_spawn){
					new_direction=270;
					distance_to_spawn=dist;
				}
			}
		}
		//right
		if(direction != 180){
			if (place_meeting(x+2, y, obj_pared) == false){
				var dist = point_distance(x+20,y,obj_spawnalert.x,obj_spawnalert.y);
				if(dist<distance_to_spawn){
					new_direction=0;
					distance_to_spawn=dist;
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
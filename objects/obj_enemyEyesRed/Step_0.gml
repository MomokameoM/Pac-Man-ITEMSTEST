/// @description logica Movimiento

new_direction=-1;
distance_to_pacman=99999;
	
		//right
		if(direction != 180){
			if (place_meeting(x+2, y, obj_pared) == false){
				var dist = point_distance(x+20,y,obj_respawn.x,obj_respawn.y);
				if(dist<distance_to_pacman){
					new_direction=0;
					distance_to_pacman=dist;
				}
			}
		}
		//UP
		if(direction != 270){
			if (place_meeting(x, y-2, obj_pared) == false){
				var dist = point_distance(x,y-20,obj_respawn.x,obj_respawn.y);
				if(dist<distance_to_pacman){
					new_direction=90;
					distance_to_pacman=dist;
				}
			}
		}
		//LEFT
		if(direction != 0){
			if (place_meeting(x-2, y, obj_pared) == false){
				var dist = point_distance(x-20,y,obj_respawn.x,obj_respawn.y);
				if(dist<distance_to_pacman){
					new_direction=180;
					distance_to_pacman=dist;
				}
			}
		}
		//DOWN
		if(direction != 90){
			if (place_meeting(x, y+2, obj_pared) == false){
				var dist = point_distance(x,y+20,obj_respawn.x,obj_respawn.y);
				if(dist<distance_to_pacman){
					new_direction=270;
					distance_to_pacman=dist;
				}
			}
		}
		
	
		if(new_direction!= -1){
			direction = new_direction;
		}
		move_contact_solid(direction,velocity);
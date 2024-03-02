/// @description inteligencia del mov del enemy

//reinicia posicion cuando muere el player
if (global.Hit){
	velocity=4;
	x=xstart;
	y=ystart;
	visible= false;	
	mode="spawn";
} else{
	if !(instance_exists(obj_enemyEyesRed)){
		visible= true;
	}
}


if!(x<0 || x>room_width || y>room_height || y<0 ){	
	
		scr_enemyCollision();
	
//////////// salir spawn//////////////
	if(mode == "spawn"){
		scr_spawnRoute();
	}
	
		
//////////// CAZAR A pacman//////////////
	
	if(mode == "caza"){
		new_direction=-1;
		distance_to_pacman=99999;
		//ESQUINA DE U
		if (place_meeting(x, y+2, walls) && place_meeting(x-2, y, walls) && place_meeting(x+2, y, walls)){
				new_direction=90;
				}
		//ESQUINA DE >
		if (place_meeting(x, y+2, walls) && place_meeting(x+2, y, walls) && place_meeting(x, y-2, walls)){
				new_direction=180;
				}
		//UP
		if(direction != 270){
			if (place_meeting(x, y-2, walls) == false){
				var dist = point_distance(x,y-20,obj_player.x,obj_player.y);
				if(dist<distance_to_pacman){
					new_direction=90;
					distance_to_pacman=dist;
				}
			}
		}
		//LEFT
		if(direction != 0){
			if (place_meeting(x-2, y, walls) == false){
				var dist = point_distance(x-20,y,obj_player.x,obj_player.y);
				if(dist<distance_to_pacman){
					new_direction=180;
					distance_to_pacman=dist;
				}
			}
		}
		//DOWN
		if(direction != 90){
			if (place_meeting(x, y+2, walls) == false){
				var dist = point_distance(x,y+20,obj_player.x,obj_player.y);
				if(dist<distance_to_pacman){
					new_direction=270;
					distance_to_pacman=dist;
				}
			}
		}
		//right
		if(direction != 180){
			if (place_meeting(x+2, y, walls) == false){
				var dist = point_distance(x+20,y,obj_player.x,obj_player.y);
				if(dist<distance_to_pacman){
					new_direction=0;
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
		
//////////// escapar de pacman//////////////
	if(mode == "escape"){
		scr_enemyEscape();
	}
	
}else{
	move_contact_solid(direction,velocity);
}
//mov aleatorio v2?
/*
{
	choices=[];
	number_of_choices=0;
	
	//UP
	if(direction != 270){
		if (place_meeting(x, y-2, obj_pared) == false){
			choices[number_of_choices ] = 90;
			number_of_choices++;
		}
	}
	/*if(direction == 90 && place_meeting(x+2, y, obj_pared)&& place_meeting(x-2, y, obj_pared)&& place_meeting(x, y-2, obj_pared)){
		choices[number_of_choices ] = 270;
		number_of_choices++;
	}
	//LEFT
	if(direction != 0){
		if (place_meeting(x-2, y, obj_pared) == false){
			choices[number_of_choices ] = 180;
			number_of_choices++;
		}
	}
	/*if(direction == 180 && place_meeting(x-2, y, obj_pared)&& place_meeting(x, y+2, obj_pared)&& place_meeting(x, y-2, obj_pared)){
		choices[number_of_choices ] = 0;
		number_of_choices++;
	}
	//DOWN
	if(direction != 90){
		if (place_meeting(x, y+2, obj_pared) == false){
			choices[number_of_choices ] = 270;
			number_of_choices++;
		}
	}/*
	if(direction == 270 && place_meeting(x+2, y, obj_pared)&& place_meeting(x-2, y, obj_pared)&& place_meeting(x, y+2, obj_pared)){
		choices[number_of_choices ] = 90;
		number_of_choices++;
	}
	//right
	if(direction != 180){
		if (place_meeting(x+2, y, obj_pared) == false){
			choices[number_of_choices]= 0;
			number_of_choices++;
		}
	}
	if(direction == 0 && place_meeting(x+2, y, obj_pared)&& place_meeting(x, y+2, obj_pared)&& place_meeting(x, y-2, obj_pared)){
		choices[number_of_choices ] = 180;
		number_of_choices++;
	}
	
	if(number_of_choices>0){
		direction=choices[irandom(number_of_choices-1)];
		if!(audio_is_playing(snd_inter)){
			sprite_index=(IMAGES[direction/90]);
		}
	}
	
	move_contact_solid(direction,velocity);
}





/*
//movimiento aleatorio?
if place_snapped(64,64){
	if hspeed == 0 {
		if random(3) <1 && place_free(x-1,y){//izquiera
			hspeed= -velocity;
			vspeed= 0;
		}
		if random(3) <1 && place_free(x+1,y){//der
			hspeed= velocity;
			vspeed= 0;
		}
	}
	if vspeed == 0 {
		if random(3) <1 && place_free(x,y-1){//arriba
			hspeed= 0;
			vspeed= -velocity;
		}
		if random(3) <1 && place_free(x,y+1){//abajo
			hspeed= 0;
			vspeed= velocity;
		}
	}
}/*
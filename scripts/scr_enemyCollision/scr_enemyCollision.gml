function scr_enemyCollision(){ 
	// si hay enemigo cuando va a la derecha
	if(direction=0){
		if(place_meeting(x+2, y, enemys)){velocity=2}else{velocity=4}
	}//izq
	if(direction=180){
		if(place_meeting(x-2, y, enemys)){velocity=2}else{velocity=4}
	}//arriba
	if(direction=90){
		if(place_meeting(x, y-2, enemys)){velocity=2}else{velocity=4}
	}//abajo
	if(direction=270){
		if(place_meeting(x, y+2, enemys)){velocity=2}else{velocity=4}
	}
}
/// @description colision con pared del enemy
/*
hspeed=-hspeed;
vspeed=-vspeed;
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
}*/

/// @description Desaparecen al regresar
if(x=other.x&&y=other.y){
	with(obj_enemyPink){
		x = other.x;
		y = other.y;
		mode="spawn";
		velocity=4;
		//speed=velocity;
	
	}
	instance_destroy();
}

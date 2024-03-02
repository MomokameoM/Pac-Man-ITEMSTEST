/// @description control del nivel
//activar enemigos con music
if(room = rm_gameover) exit;
if (audio_is_playing(snd_intro)==false){
	if !instance_exists(obj_enemyBlue){
 		instance_activate_object(obj_enemyBlue);
	}
	if !instance_exists(obj_enemyRed){
 		instance_activate_object(obj_enemyRed);
	}
	if !instance_exists(obj_enemyPink){
 		instance_activate_object(obj_enemyPink);
	}
	if !instance_exists(obj_enemyOrange){
 		instance_activate_object(obj_enemyOrange);
	}
}

//eliminar todo cuando se quede sin vidas
if(global.Vidas<=0){
	if instance_exists(obj_enemyBlue){
 		with(obj_enemyBlue)instance_destroy();
	}
	if instance_exists(obj_enemyRed){
 		with(obj_enemyRed)instance_destroy();
	}
	if instance_exists(obj_enemyPink){
 		with(obj_enemyPink)instance_destroy();
	}
	if instance_exists(obj_enemyOrange){
 		with(obj_enemyOrange)instance_destroy();
	}
	with(obj_player)instance_destroy();
	with(obj_powerball)instance_destroy();
	with(obj_pto)instance_destroy();
	with(obj_bonus)instance_destroy();
	room_goto(rm_gameover);
}

//completar nivel
if(instance_number(obj_pto)==0 && instance_number(obj_powerball)==0 && global.Vidas>0){
	if(room_next(room)!= -1){
		audio_stop_all();
		room_goto_next();
	}else{
		audio_stop_all();
		room_goto(rm_win);
		instance_destroy();	
	}
}
/// @description Variables del juego
scr_tutoMSGs();
scr_textboxCenterIni();
//audio_play_sound(snd_intro,80,0);
if instance_exists(obj_enemyBlue){
    instance_deactivate_object(obj_enemyBlue);
}
if instance_exists(obj_enemyRed){
    instance_deactivate_object(obj_enemyRed);
}
if instance_exists(obj_enemyPink){
    instance_deactivate_object(obj_enemyPink);
}
if instance_exists(obj_enemyOrange){
    instance_deactivate_object(obj_enemyOrange);
}

alarm[0]= room_speed*10;//crea bonus
alarm[1]= room_speed*20;//aumenta velocidad

global.Ptos= 0;
global.Vidas= 3;
global.PowerUp= false;
global.Bonus= false;
global.Hit= false;
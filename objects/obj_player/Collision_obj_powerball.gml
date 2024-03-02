/// @description obtiene poder
audio_play_sound(snd_fruit,50,0);
if(audio_is_playing(snd_inter)){
	audio_stop_sound(snd_inter);
	audio_play_sound(snd_inter,50,0);
}else audio_play_sound(snd_inter,50,0);
alarm[0]=room_speed*2;
global.PowerUp=true;
global.Ptos+=5;

with(obj_enemyPink){
	scr_powerballEfect();
};
with(obj_enemyBlue){
	scr_powerballEfect();
};
with(obj_enemyRed){
	scr_powerballEfect();
};

with(obj_enemyOrange){
	scr_powerballEfect();
};

with(other){
	instance_destroy();
}
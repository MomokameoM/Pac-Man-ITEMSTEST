/// @description ganar ptos
audio_play_sound(snd_fruit,50,0);
global.Ptos +=1;
with(other){
	instance_destroy();
}
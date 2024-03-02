// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_chompsnd(){
	if (audio_is_playing(snd_chomp)==false){
		audio_play_sound(snd_chomp,50,0);
	}
}
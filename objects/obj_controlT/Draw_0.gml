/// @description dibujar ptos,vidas,etc.

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_mine);
//SCORE
draw_text(32,16,"Puntos: "+string(global.Ptos));

//VIDAS
draw_text(room_width/2,16,"Vidas: ");
for(var i=0;i<global.Vidas;i+=1){
	draw_sprite_stretched(spr_player_right,2,(room_width/2)+string_width("VIDAS: ")+(i*33),16,32,32)
}
//READY
if(audio_is_playing(snd_intro)){
	draw_set_color(c_yellow);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed(room_width/2,room_height/2,"READY?!",4,4,0);
}

//Bonus
if(global.Bonus){
	draw_sprite(spr_fruit,0,room_width-64,0) 
}

//GAMEOVER
if(global.Vidas==0){
	draw_set_halign(fa_center);
	draw_set_color(c_yellow);
	draw_set_valign(fa_top);
	draw_text_transformed(room_width/2,room_height/2,"GAME OVER",5,5,0);
}


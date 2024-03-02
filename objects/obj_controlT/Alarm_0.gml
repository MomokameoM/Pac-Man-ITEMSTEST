/// @description crear fruta
if(global.Vidas==0) exit;
if(global.Bonus) exit;

instance_create_layer(obj_player.xstart,obj_player.ystart,"lyr_instances",obj_bonus);
alarm[0] = room_speed*20;
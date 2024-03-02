/// @description config enemigo
//randomize();
sprite_index= spr_enemyRedRight;
image_speed=0;
IMAGES=[spr_enemyRedRight,spr_enemyRedUp,spr_enemyRedLeft,spr_enemyRedDown];
//instance_create_layer(x,y,"lyr_instances",obj_respawnRed);
//movimiento aleatorio
mode="spawn";
velocity =4;
direction = 90;
walls= global.walls;
enemys= global.enemys;
//motion_set(direction,velocity);
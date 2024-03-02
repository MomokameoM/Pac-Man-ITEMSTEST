/// @description config enemigo
//randomize();
sprite_index= spr_enemyPinkRight;
image_speed=0;
IMAGES=[spr_enemyPinkRight,spr_enemyPinkUp,spr_enemyPinkLeft,spr_enemyPinkDown];
//instance_create_layer(x,y,"lyr_instances",obj_respawnPink);
//movimiento aleatorio
mode="spawn";
velocity =4;
direction = 90;

walls= global.walls;
enemys= global.enemys;
//motion_set(direction,velocity);
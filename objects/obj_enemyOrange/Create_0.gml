/// @description config enemigo
//randomize();
sprite_index= spr_enemyOrangeRight;
image_speed=0;
IMAGES=[spr_enemyOrangeRight,spr_enemyOrangeUp,spr_enemyOrangeLeft,spr_enemyOrangeDown];
//instance_create_layer(x,y,"lyr_instances",obj_respawnOrange);
//movimiento aleatorio
mode="spawn";
velocity =4;
direction = 90;
walls= global.walls;
enemys= global.enemys;
//motion_set(direction,velocity);
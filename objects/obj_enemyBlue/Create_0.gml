/// @description config enemigo
//randomize();
sprite_index= spr_enemyPinkRight;
image_speed=0;
IMAGES=[spr_enemyBlueRight,spr_enemyBlueUp,spr_enemyBlueLeft,spr_enemyBlueDown];
//instance_create_layer(x,y,"lyr_instances",obj_respawnBlue);
//movimiento aleatorio
mode="spawn";
velocity =4;
direction = 90;
walls= global.walls;
enemys= global.enemys;
redColli=false;
//motion_set(direction,velocity);
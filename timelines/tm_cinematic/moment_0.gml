act[0]=instance_create_depth(-64,447,1,obj_powerball);
with(act[0]){
	sprite_index=spr_powerballs;
	image_index=0;
	image_speed=1;
	move_towards_point(512,319,5);
}
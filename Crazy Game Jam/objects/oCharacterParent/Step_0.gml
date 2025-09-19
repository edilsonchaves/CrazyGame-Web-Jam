var xsp = playerXVelocityDefault * playerWalkSide;

if(playerWalkSide != 0){
	image_xscale = playerWalkSide;
}

if(keyboard_check(vk_f1)){
	ChangePlayerAge(BABYOBJECT);
}
if(keyboard_check(vk_f2)){
	ChangePlayerAge(YOUNGOBJECT);
}
if(keyboard_check(vk_f3)){
	ChangePlayerAge(ADULTOBJECT);
}
move_and_collide(xsp, 0, true);
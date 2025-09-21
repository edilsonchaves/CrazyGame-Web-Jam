if(keyboard_check(vk_f1)){
	ChangePlayerAge(BABYOBJECT);
}
if(keyboard_check(vk_f2)){
	ChangePlayerAge(YOUNGOBJECT);
}
if(keyboard_check(vk_f3)){
	ChangePlayerAge(ADULTOBJECT);
}

// Calculate Move Y
vspd += PLAYERGRAVITY;
vspd = clamp(vspd, vspdMin, vspdMax)

// Calculate Move X
if(playerWalkSide != 0){
	if(isGround){
		ModifyAnimation(sprPlayerRun)
	}
	moveDir = point_direction(0, 0, playerWalkSide, 0)
	playerXSpeed = lerp(playerXSpeed, playerXSpeedMax, playerAcceleration);
}else{
	if(isGround){
		ModifyAnimation(sprPlayerStand)
	}

	playerXSpeed = lerp(playerXSpeedMax, 0, playerDesacceleration)
}
hspd = lengthdir_x(playerXSpeed, moveDir)

if(hspd != 0){
	image_xscale = sign(hspd) * 0.5
}
isGround = CheckIsGround();
if(isShooted){
	vspd += OBJECTGRAVITY;
	vspd = clamp(vspd, vspdMin, vspdMax)

	isGround = CheckIsGround();	
	if(!isGround){

		moveDir = point_direction(0, 0, objectWalkSide, 0)
		objectXSpeed = lerp(objectXSpeed, objectXSpeedMax, objectAcceleration);
	}else{
		instance_create_layer(initialPositionX, initialPositionY, layer, oBlocoDeGelo);
		instance_destroy();
	}
	hspd = lengthdir_x(objectXSpeed, moveDir)

	if(hspd != 0){
		image_xscale = sign(hspd) * 2
	}
}
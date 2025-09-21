isShootable = false;
isShooted = false;
initialPositionX = x;
initialPositionY = y;
hspd = 0;
vspd = 0;
moveDir = 0;
vspdMin = -7;
vspdMax = 6;
objectWalkSide = 0;
objectXSpeedMax = 15;
objectXSpeed = 0
objectYSpeed = 0;
OBJECTGRAVITY = 0.5;
objectAcceleration = 1.5;
objectDesacceleration = 2;
isGround = false;

function Shoot(isRight){
	objectWalkSide = isRight
	isShooted = true;
}

function CheckIsGround(){
	return place_meeting(x, y+1, oChao);
}
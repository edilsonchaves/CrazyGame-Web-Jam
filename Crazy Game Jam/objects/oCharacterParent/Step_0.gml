if(keyboard_check(vk_f1)){
	ChangePlayerAge(BABYOBJECT);
}
if(keyboard_check(vk_f2)){
	ChangePlayerAge(YOUNGOBJECT);
}
if(keyboard_check(vk_f3)){
	ChangePlayerAge(ADULTOBJECT);
}

moveDir = point_direction(0, 0, playerWalkSide, 0)

var move = sign(playerWalkSide);
show_debug_message(move)
var sollidCollsion = place_meeting(x, y + slopeMax, oChao);
hspd = move * playerXSpeedMax;

if(hspd != 0){
	ModifyAnimation(sprPlayerRun);
}else{
	ModifyAnimation(sprPlayerStand);
}

vspd += PLAYERGRAVITY;
if(playerIsJump and sollidCollsion){
	vspd = -playerYSpeed;
}
if(playerWalkSide != 0 ){
	image_xscale = sign(playerWalkSide) * 0.5
}

var arr = move_and_collide(hspd, vspd, oChao)
//adhere to slopes when moving down
 if(sollidCollsion and !place_meeting(x, y + slopeMax, oChao) and vspd > 0){
	 var testWhile = 0;
	while(!place_meeting(x, y + 1, oRampa) and testWhile < 30){
		y+=1;
		testWhile++;
	}  
 }
//move and collide
if(array_length(arr) != 0 and place_meeting(x, y + vspd, oChao)){
	vspd = 0;
}
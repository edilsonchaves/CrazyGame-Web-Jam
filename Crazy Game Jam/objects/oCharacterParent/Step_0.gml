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

isGround = CheckIsGround();

if (!isGround) {
    playerYVelocity += PLAYERGRAVITY; // Gravidade gradual
} else if (playerYVelocity > 0) {
    playerYVelocity = 0; // Para a queda quando tocar o chão
}

move_and_collide(xsp, playerYVelocity, oChao);
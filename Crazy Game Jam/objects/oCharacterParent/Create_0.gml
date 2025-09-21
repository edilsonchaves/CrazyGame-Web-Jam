hspd = 0;
vspd = 0;
moveDir = 0;
vspdMin = -7;
vspdMax = 6;
playerWalkSide = 0;
playerWalkKeyPress = "";
playerXSpeedMax = 5;
playerXSpeed = 0
playerYSpeed = 0;
playerAcceleration = 1;
playerDesacceleration = 1;
isPlayerJump = false;
playerIsInteractable = false;
//Variáveis para pegar a caixa
carried_object = noone
playerIsJump = false;
playerYVelocity = 0;
isGround = false;
AKEY = "A";
DKEY = "D";
LEFTKEY = "Left";
RIGHTKEY = "Right";
PLAYERGRAVITY = 0.5;
BABYOBJECT = oPlayerBaby;
YOUNGOBJECT = oPlayerYoung;
ADULTOBJECT = oPlayerAdult;
isPlataformaInstavel = false;
sprPlayerStand = sPlayer_idle;
sprPlayerRun = sPlayer_idle;
sprPlayerJump = sPlayer_idle;
sprPlayerFall = sPlayer_idle;
image_xscale = 0.5;
image_yscale = 0.5;
/// @function                 Key Movement Pressed(keyPressed);
/// @param {string}			  keyPressed  The key pressed
/// @description              Store last key pressed.
function KeyMovementPressed(keyPressed){
	  playerWalkKeyPress = keyPressed
}

/// @function                 Key Movement Released(keyReleased);
/// @param {string}			  keyReleased  The key released
/// @description              Check key released and if same to playerWalkKeyPress do any action.
function KeyMovementReleased(keyReleased){
	if( playerWalkKeyPress == keyReleased){
		playerWalkKeyPress = "";
		playerWalkSide = 0;
	}		
}

/// @function                 ChangePlayerAge(agedObject);
/// @param {GMObject}		  agedObject New Player Object
/// @description              Change player to another avatar

function ChangePlayerAge(agedObject){
	instance_create_layer(x, y, layer, agedObject);
	instance_destroy();
}

function CheckIsGround(){
	return place_meeting(x, bbox_bottom + 1, oChao);
}

/// @function                 ModifyAnimation(newAnimation);
/// @param {Asset.GMSprite}		  newAnimation New Player Sprite
/// @description              Change player sprite

function ModifyAnimation(newAnimation){
	sprite_index = newAnimation;
}
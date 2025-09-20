playerWalkSide = 0;
playerWalkKeyPress = "";
playerXVelocityDefault = 4;
playerYVelocity = 0;
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
	instance_create_layer(x, y, 5, agedObject);
	instance_destroy();
}

function CheckIsGround(){
	return place_meeting(x, y+1, oChao);
}
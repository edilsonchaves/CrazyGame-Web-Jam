playerWalkSide = 0;
playerWalkKeyPress = "";
playerXVelocityDefault = 4;
playerYVelocity = 0;

AKEY = "A";
DKEY = "D";
LEFTKEY = "Left";
RIGHTKEY = "Right";

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
	instance_create_layer(x, y, layer, agedObject);
	instance_destroy();
}
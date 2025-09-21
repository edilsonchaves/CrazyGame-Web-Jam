// Inherit the parent event
event_inherited();

if(isPlayerJump){
	vspd = 0;
	vspd = PLAYERJUMPFORCE;
	isPlayerJump = false
}

if(playerIsInteractable){
	playerIsInteractable = !playerIsInteractable;
	if (!is_carrying) {
        // Tentar pegar objeto próximo
        var nearest_box = instance_nearest(x, y, oBox);
        if (instance_exists(nearest_box) && distance_to_object(nearest_box) < 40) {
            // Pegar o objeto
            is_carrying = true;
            carried_object = nearest_box;
        }
    } else {
        // Soltar o objeto
        is_carrying = false;
        if (instance_exists(carried_object)) {
            carried_object.y = y - 150; // Soltar um pouco abaixo do player
        }
        carried_object = noone;
    }
}

if(is_carrying && isShootObject){
	isShootObject = false;
	is_carrying = false;
	if(carried_object.isShootable){
		carried_object.Shoot(sign(image_xscale));
		carried_object = noone
	}
}

if (is_carrying && instance_exists(carried_object)) {
    if(playerWalkSide == 1){
		carried_object.x = x + 60;
	}
	if(playerWalkSide == -1){
		carried_object.x = x - 190;
	}
    carried_object.y = y - 300; // Objeto fica acima da cabeça
}

// Inherit the parent event
event_inherited();

if(isPlayerJump){
	playerYVelocity = PLAYERJUMPFORCE;
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
            carried_object.x = x;
            carried_object.y = y + 30; // Soltar um pouco abaixo do player
        }
        carried_object = noone;
    }
}

if (is_carrying && instance_exists(carried_object)) {
    carried_object.x = x;
    carried_object.y = y - 30; // Objeto fica acima da cabeça
}

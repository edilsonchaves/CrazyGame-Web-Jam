if(isShooted){
	other.ApplyDamage();
	instance_create_layer(initialPositionX, initialPositionY, layer, oBlocoDeGelo);
	instance_destroy();
}

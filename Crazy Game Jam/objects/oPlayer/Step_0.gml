//Movimento Horizontal do personagem
xsp = 0;

if keyboard_check(vk_left) {
	xsp = -4
	//inverter imagem
	image_xscale = -1
}
if keyboard_check(vk_right){
	xsp = +4
	//inverter imagem
	image_xscale  = 1
}

//Verificar se está no chão
var no_chao = place_meeting(x, y+1, oChao);

//Pulo
if keyboard_check_pressed(vk_space) {
	ysp = -10
	}
	
//Aplicar gravidade (apenas se não estiver no chão ou se estiver pulando)
if (!no_chao) {
    ysp += 0.5; // Gravidade gradual
} else if (ysp > 0) {
    ysp = 0; // Para a queda quando tocar o chão
}

//Movimento final
move_and_collide(xsp, ysp, oChao);


///////////////////////////////////////// PEGAR E SOLTAR CAIXA

// Pegar/Soltar objeto com ESPAÇO
if (keyboard_check_pressed(vk_alt)) {
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
            carried_object.y = y + 20; // Soltar um pouco abaixo do player
        }
        carried_object = noone;
    }
}
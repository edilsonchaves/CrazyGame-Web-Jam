// Se não está mais estável, conta regressiva
if (!estavel && contador_queda > 0) {
    contador_queda--;
    
    // Efeito de tremor (opcional)
    x += random_range(-1, 1);
    
    // Quando termina o tempo, começa a cair
    if (contador_queda <= 0) {
        // Remove colisão para não atrapalhar a queda
        solid = false;
    }
}

// Sistema de queda
if (!estavel && contador_queda <= 0) {
    velocidade_queda += gravidade_plataforma;
    y += velocidade_queda;
    
    // Destroi quando sai da tela
    if (y > room_height + 100) {
        instance_destroy();
    }
}

if(place_meeting(x, y - 1, oCharacterParent) && estavel){
	estavel = false;
	 contador_queda = tempo_instabilidade;
	 PlaySound();
}
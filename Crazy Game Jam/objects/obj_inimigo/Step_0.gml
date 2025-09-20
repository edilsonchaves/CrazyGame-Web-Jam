
//Aula 4 - Tema: Convert to Frame
// Verifica se o inimigo está dentro da câmera (na tela)
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

if (x > cam_x && x < cam_x + cam_w && y > cam_y && y < cam_y + cam_h) {
// Movimento contínuo
x += velocidade_patrulha * direcao_patrulha;

// Checa se deve virar
var deve_virar = false;

// Limites de patrulha
var limite_direito_x = ponto_central_patrulha_x + distancia_limite_patrulha;
var limite_esquerdo_x = ponto_central_patrulha_x - distancia_limite_patrulha;

// Condição 1: Passou do limite de patrulha
if ((direcao_patrulha == 1 && x >= limite_direito_x) ||
    (direcao_patrulha == -1 && x <= limite_esquerdo_x)) {
    deve_virar = true;
}

// Condição 2: Não há chão à frente
var ponto_checar_borda_x = x + (velocidade_patrulha * direcao_patrulha * 2);
var ponto_checar_borda_y = bbox_bottom + 1;

if (!deve_virar && !place_meeting(ponto_checar_borda_x, ponto_checar_borda_y, obj_plataforma)) {
    deve_virar = true;
}

// Executa virada se necessário
if (deve_virar) {
    direcao_patrulha *= -1;           // Inverte a direção
    image_xscale = direcao_patrulha;  // Vira o sprite visualmente

    // Reposiciona no limite para evitar ultrapassagem
    if (direcao_patrulha == 1) {
        x = limite_esquerdo_x;
    } else {
        x = limite_direito_x;
    }
}

	
	//Aula 4 - Tema: Melhorando o inimigo
	// Conta o tempo até o próximo disparo
	contador_recarga_bateria--;

	if (contador_recarga_bateria <= 0) {
	    // Cria a bateria um pouco acima do inimigo
	    var bateria_lancada = instance_create_layer(x, y - 16, "Objects", obj_bateria);

	    // Calcula direção para o jogador
	    var direcao_para_player = point_direction(x, y, obj_player.x, obj_player.y);

	    // Define a velocidade da bateria
	    var velocidade_bateria = 4;
	    bateria_lancada.hspeed = lengthdir_x(velocidade_bateria, direcao_para_player);
	    bateria_lancada.vspeed = lengthdir_y(velocidade_bateria, direcao_para_player);

	    // Reinicia o tempo de recarga
	    contador_recarga_bateria = tempo_recarga_bateria;
	}
	//Aula 4 - Tema: Melhorando o inimigo
	

}
//Fim Aula 4 - Tema: Convert to Frame

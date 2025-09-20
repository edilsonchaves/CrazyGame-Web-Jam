
//Aula 4 - Tema: Convert to Frame
// Patrulha
velocidade_patrulha = 1;      // Velocidade do inimigo
direcao_patrulha = 1;         // 1 = direita, -1 = esquerda

ponto_central_patrulha_x = x; // Posição inicial do inimigo
distancia_limite_patrulha = 50; // Alcance máximo para patrulhar em cada lado

// Sprite
sprite_index = spr_inimigo;           // Sprite do inimigo
image_xscale = direcao_patrulha;      // Direção inicial do sprite
//Fim Aula 4 - Tema: Convert to Frame



//Aula 4 - Tema: Melhorando o inimigo
// Lançamento de baterias
tempo_recarga_bateria = 120;              // Intervalo entre os disparos (frames)
contador_recarga_bateria = tempo_recarga_bateria; // Começa pronto para atirar
//Fim Aula 4 - Tema: Melhorando o inimigo


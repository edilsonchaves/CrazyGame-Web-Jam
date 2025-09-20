//Aula 4 - Tema: Mascara de colisão
// Troca de sprite (pulo > corrida > parado)
if (!no_chao) {
    sprite_index = spr_player_jump;
} else if (move != 0) {
    sprite_index = spr_player_run;
} else {
    sprite_index = spr_player_idle;
}
//Fim Aula 4 - Tema: Mascara de colisão


//Aula 4 - Tema: Convert to Frame
// Elimina inimigo por cima
if (place_meeting(x, y + 1, obj_inimigo)) {
    var inimigo_colidido = instance_place(x, y + 1, obj_inimigo);
    
    if (inimigo_colidido != noone && velocidade_vertical > 0) {
        with (inimigo_colidido) instance_destroy();
        velocidade_vertical = -6; // Quica ao matar
    }
}
//Fim Aula 4 - Tema: Convert to Frame
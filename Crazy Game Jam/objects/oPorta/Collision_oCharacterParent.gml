if (!abrir_porta) {
    with (other) {
        // Para completamente o movimento
        playerXVelocity = 0;
        playerYVelocity = 0;
        
        // Calcula direção para empurrar o jogador
        var push_dir = point_direction(x, y, other.x, other.y);
        var push_dist = 16; // Distância para empurrar
        
        // Empurra na direção oposta à porta
        x -= lengthdir_x(push_dist, push_dir);
    }
}
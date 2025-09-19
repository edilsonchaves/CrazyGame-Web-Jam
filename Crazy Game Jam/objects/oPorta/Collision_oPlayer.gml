if (!abrir_porta) {
    with (other) {
        // Para completamente o movimento
        xsp = 0;
        ysp = 0;
        
        // Calcula direção para empurrar o jogador
        var push_dir = point_direction(x, y, other.x, other.y);
        var push_dist = 32; // Distância para empurrar
        
        // Empurra na direção oposta à porta
        x -= lengthdir_x(push_dist, push_dir);
        y -= lengthdir_y(push_dist, push_dir);
    }
}
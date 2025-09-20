event_inherited();

// Mostrar dica na tela
if (!is_carrying) {
    var nearest_box = instance_nearest(x, y, oBox);
    if (instance_exists(nearest_box) && distance_to_object(nearest_box) < 40) {
        draw_text(x - 30, y - 50, "E - Catch");
    }
} else {
    draw_text(x - 30, y - 50, "E - Release");}
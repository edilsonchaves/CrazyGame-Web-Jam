var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);


if (x > cam_x && x < cam_x + cam_w && y > cam_y && y < cam_y + cam_h) {
		contador_recarga_bateria--;

	if (contador_recarga_bateria <= 0) {

	    var project_lancada = instance_create_layer(x, y - 16, "BossBulletInstances", oInimigoProject);


	    var direcao_para_player = point_direction(x, y, oCharacterParent.x, oCharacterParent.y + ((oCharacterParent.bbox_top - oCharacterParent.bbox_bottom) * 0.5));

	    var velocidade_project = 3;
	    project_lancada.hspeed = lengthdir_x(velocidade_project, direcao_para_player);
	    project_lancada.vspeed = lengthdir_y(velocidade_project, direcao_para_player);

	    contador_recarga_bateria = tempo_recarga_bateria;
	}
}else{
	contador_recarga_bateria = tempo_recarga_bateria;
}
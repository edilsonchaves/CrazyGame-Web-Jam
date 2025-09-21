image_alpha = 1;
switch(button_id){
	case 0:
		show_debug_message("Start Game")
		OpenSpecficLayer("Game")
		room_goto(Gameplay);
	break;
	case 1:
		show_debug_message("Credits")
		OpenSpecficLayer("Credits");
		room_goto(rm_credits);
	break;
	case 2:
		show_debug_message("Main Menu")
		OpenSpecficLayer("Menu")
		room_goto(rm_menu);
	break;
	case 3:
		show_debug_message("New Game")
		OpenSpecficLayer("Game")
		room_goto(Gameplay);
	break;
}
audio_stop_sound(Som_Menu);
audio_play_sound(Som_Botao, 5, false);

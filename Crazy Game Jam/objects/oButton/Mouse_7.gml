image_alpha = 1;
switch(button_id){
	case 0:
		show_debug_message("Start Game")
		OpenSpecficLayer("Game")
		room_goto(rm_fase1);
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
}


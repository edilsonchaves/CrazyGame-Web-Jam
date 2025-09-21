/*repeat(abs(hspd)){
	if(place_meeting(x + sign(hspd), y, oRampa)){
		show_debug_message("Collide Rampa")
		if(!place_meeting(x + sign(hspd), y - 1, oRampa)){
			y --;
		}
	}else{
		if(!place_meeting(x + sign(hspd), y + 1, oRampa)){
			if(place_meeting(x + sign(hspd), y + 2, oRampa)){
				y ++;
			}
		}
	}
	
	show_debug_message(x + sign(hspd))
	if(place_meeting(x + sign(hspd), y, oChao)){
		hspd = 0;
		break;
	}else{
		x += sign(hspd);
	}
}

repeat(abs(vspd)){
	if(place_meeting(x, y + sign(vspd), oChao)){
		vspd = 0;
		break;
	}else{
		y += sign(vspd);
	}
}*/
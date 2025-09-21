// Toca som ambiente apenas se ainda não estiver tocando
if (!audio_is_playing(Som_Menu)) {
 audio_play_sound(Som_Menu, 1, true); // ID = 1, loop = true
 
}
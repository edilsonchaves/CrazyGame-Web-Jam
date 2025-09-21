
if(playCutScene){
	if(! isFirst){
		introSequence = layer_sequence_create(layerName,oCharacterParent.x,oCharacterParent.y,sequence)
		isFirst = true
	}else{
		frame += 1;
		show_debug_message("AAAAA")
		show_debug_message(frame)
		if(layer_sequence_is_finished(introSequence)){
			show_debug_message(frame)
			instance_destroy(introSequence);
			instance_destroy();
		}
	}
}


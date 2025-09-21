tempo_recarga_bateria = 120;              // Intervalo entre os disparos (frames)
contador_recarga_bateria = tempo_recarga_bateria;
bossLife = 3;


function ApplyDamage(){
	bossLife--;
	if(bossLife ==0){
		instance_destroy();	
	}
}
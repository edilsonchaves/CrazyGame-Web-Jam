if(other.bbox_top > y){
	isPlataformaInstavel = true
	if (other.estavel) {
       other.estavel = false;
       other.contador_queda = other.tempo_instabilidade;
	   other.PlaySound();
	}
}

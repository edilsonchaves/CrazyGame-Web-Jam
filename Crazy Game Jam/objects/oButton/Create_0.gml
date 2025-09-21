function ResetAllLayers(){
	layer_set_visible("Menu", false);
	layer_set_visible("Credits", false);
	layer_set_visible("Game", false);
	layer_set_visible("GameOver", false);
}

/// @function                 OpenSpecficLayer(LayerName);
/// @param {string}  LayerName  The UILayer to show
/// @description             Show Unique UILayer.
function OpenSpecficLayer(LayerName){
	ResetAllLayers();
	layer_set_visible(LayerName, true);
}
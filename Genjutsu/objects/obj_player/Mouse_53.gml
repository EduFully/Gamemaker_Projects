var x1 = x;
var y1 = y;
var x2 = (obj_destino.x div 16)*16+8;
var y2 = (obj_destino.y div 16)*16+8;

if (mp_grid_path(obj_mapa.mp_grid,caminho,x1,y1,x2,y2,true)){
	path_start(caminho,5,path_action_stop,false);
}
draw_self();
draw_path(caminho,obj_destino.x,obj_destino.y,true);
if(place_meeting(x,y,obj_destino)){
	draw_sprite(spr_caixa,0,x-32,y+16);
}
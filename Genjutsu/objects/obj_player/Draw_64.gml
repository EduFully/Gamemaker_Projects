draw_set_font(fnt_info);
if(place_meeting(x,y,obj_destino)){
	draw_sprite(spr_caixa,0,20,180);
	draw_text_ext(30,190,"Nome: "+obj_destino.produto,23,220);
	draw_text_ext(30,214,"Quantidade: "+string(obj_destino.quantidade),23,220);
	draw_text_ext(30,238,"Quantidade: "+string(obj_destino.valor),23,220);
}
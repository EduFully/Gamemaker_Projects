if(instance_exists(obj_player)){
	x = lerp(x,target.x - view_width / 2,view_spd)
	y = lerp(y,target.y - view_height / 2,view_spd)
	
	camera_set_view_pos(view_camera[0],x,y);
	
}else{
	target = -1;
}
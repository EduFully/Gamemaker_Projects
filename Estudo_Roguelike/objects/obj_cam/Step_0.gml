if(instance_exists(obj_player)){
	x = lerp(x,target.x - view_width / 2,view_spd);
	y = lerp(y,target.y - view_height / 2,view_spd);
	
	x = clamp(x,0,room_width - view_width);
	y = clamp(y,0,room_height - view_height);
	
	camera_set_view_pos(view_camera[0],x,y);
}else{
	target = -1;
}
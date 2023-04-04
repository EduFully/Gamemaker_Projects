switch(state){
	case "parado":
		var range = 300;
		var line = collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false);
		if(distance_to_object(obj_player) <= range && !line){
			state = "seguindo";
		}
	break;
	case "seguindo":
		var x1 = x;
		var y1 = y;
		var x2 = (obj_player.x div 32) * 32 + 16;
		var y2 = (obj_player.y div 32) * 32 + 16;

		if(mp_grid_path(obj_map.mp_grid,caminho,x1,y1,x2,y2,true)){
			path_start(caminho,spd,path_action_stop,false);
		}
	break;
}


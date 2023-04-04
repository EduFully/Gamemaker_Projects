cell_size = 64;
room_width = cell_size * 40;
room_height = room_width div 2;
cell_w = room_width div cell_size;
cell_h = room_height div cell_size;

grid = ds_grid_create(cell_w,cell_h);
mp_grid = mp_grid_create(0,0,cell_w,cell_h,cell_size,cell_size);
ds_grid_clear(grid,0);
randomize();
var dir = irandom(3);
var xx = cell_w div 2;
var yy = cell_h div 2;
var chance = 1;
var passo = 400;
var enemy_max = 10;

for(var i = 0;i < passo;i++){
	if(irandom(chance) == chance){
		dir = irandom(3);
	}
	xx +=lengthdir_x(1,dir * 90);
	yy +=lengthdir_y(1,dir * 90);
	
	xx = clamp(xx,2,cell_w - 2);
	yy = clamp(yy,2,cell_h - 2);
	
	grid[# xx,yy] = 1;
}

for(var xx = 0;xx < cell_w;xx++){
	for(var yy = 0;yy < cell_h;yy++){
		if(grid[# xx,yy] == 0){
			//coloca parede
			instance_create_layer(xx *cell_size,yy * cell_size,"Instances",obj_wall);
		}
		if(grid[# xx,yy] == 1){
			//coloca obj
			var x1 = xx * cell_size + cell_size / 2;
			var y1 = yy * cell_size + cell_size / 2;
			if(!instance_exists(obj_player)){
				instance_create_layer(x1,y1,"Instances",obj_player);
			}
			if(enemy_max > 0){
				var chance = 25;
				var dist = 150;
				if(irandom(chance) == chance && point_distance(x1,y1,obj_player.x,obj_player.y) > dist){	
					instance_create_layer(x1,y1,"Instances",obj_enemy);
					enemy_max -= 1;
				}
			}
		}
	}
}

mp_grid_add_instances(mp_grid,obj_wall,false);
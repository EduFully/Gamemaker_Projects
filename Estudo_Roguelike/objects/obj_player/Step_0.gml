var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var pressed = right - left != 0 || down - up != 0;

move_dir = point_direction(0,0,right - left, down - up);

if(hspd != 0) image_xscale = sign(hspd);

hspd = lengthdir_x(spd * pressed,move_dir);
vspd = lengthdir_y(spd * pressed,move_dir);

if(place_meeting(x+hspd,y,obj_wall)){
	while(!place_meeting(x+sign(hspd),y,obj_wall)){
		x+=sign(hspd);
	}
	hspd = 0;
}

if(place_meeting(x,y+vspd,obj_wall)){
	while(!place_meeting(x,y+sign(vspd),obj_wall)){
		y+=sign(vspd);
	}
	vspd = 0;
}

x += hspd;
y += vspd;
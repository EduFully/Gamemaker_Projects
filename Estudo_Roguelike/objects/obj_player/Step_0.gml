var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var front = keyboard_check(ord("W"));
var back = keyboard_check(ord("S"));

hspd = right - left;
vspd = back - front;

x+=hspd*spd;
y+=vspd*spd;
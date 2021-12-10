/// @description Insert description here
// You can write your code in this editor

if (attacking && oPlayer1.canHit) {
	global.p1health = global.p1health - 25;
	oPlayer1.canHit = false;
	alarm[1] = 1;
}
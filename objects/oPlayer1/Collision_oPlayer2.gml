/// @description Insert description here
// You can write your code in this editor

if (attacking && oPlayer2.canHit) {
	global.p2health = global.p2health - 25;
	oPlayer2.canHit = false;
	alarm[1] = 1;
}
/// @description Insert description here
// You can write your code in this editor

<<<<<<< Updated upstream
if (attacking) {
	global.p2health = global.p2health - 25;
	audio_play_sound(damageNoise, 10, false);
=======
if (attacking && oPlayer2.canHit) {
	global.p2health = global.p2health - 1;
	oPlayer2.canHit = false;
	alarm[1] = 1;
>>>>>>> Stashed changes
	
}
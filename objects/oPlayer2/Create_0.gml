/// @description Insert description here
// You can write your code in this editor

dir = 1;  // direction facing (right)
spd = 6;  // speed to move
g = 0.2;  // gravity applied
global.p2health = 100;  // health of player1
global.p2maxHealth = 100;  // max health of player1
sprite_index = Cow_Idle;  // animation that will play or be used
xspeed = 10;  // horizontal speed
yspeed = 7;  // vertical speed
falling = false;  // is falling boolean flag
jumping = false;  // is jumping boolean flag
attacking = false;
grav = 0; 
gravMax = 14;  // max falling speed
gravDelta = 1.2;
gravJump = -35;  // jump gravity

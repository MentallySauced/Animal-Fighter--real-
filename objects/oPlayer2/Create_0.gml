/// @description Insert description here
// You can write your code in this editor

dir = 1;
jumping = false;
g = 0.2;  // gravity applied
grav = 0; 
gravMax = 14;  // max falling speed
gravDelta = 1.2;
gravJump = -35;  // jump gravity
global.p2health = 100;  // health of player1
global.p2maxHealth = 100;  // max health of player1
hSpeed = 0;
walkSpeed = 6;


enum PLAYER2STATE {
	Player2State_Idle,
	Player2State_Attack,
	Player2State_Hit
}

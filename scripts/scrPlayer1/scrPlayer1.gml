function scrPlayer1(){
	//var c1;
	
	
	// basic Jumping
	y = y+grav;
	grav += gravDelta;
	if (grav >= gravMax) {
		grav = gravMax;
	}
	
	// Jumping and falling
	if (!jumping) {
		if (keyboard_check(ord("W"))){
			grav = gravJump;
			jumping = true;
		}
	}
	if (grav < 0) {
		sprite_index = Chicken_Jump;
	} else {
		if (jumping) {
			sprite_index = Chicken_Jump;
		} else {
			grav = 0;
		}
	}
		
	
	// Walking
	if (keyboard_check(ord("A"))) {
		dir = -1;
		image_xscale = dir;
		if (!jumping && !falling){
			sprite_index = Chicken_Walk;
		}
		x = x-xspeed;
	} else if (keyboard_check(ord("D"))) {
		dir = 1;
		image_xscale = dir;
		if (!jumping && !falling){
			sprite_index = Chicken_Walk;
		}
		x = x+xspeed;
	}
	
	
	// Attacks
	if (keyboard_check(ord("F"))) {
		sprite_index = Chicken_Melee_Attack;
		attacking = true;
		alarm[0] = 2;
		
	}
	
	if (global.p1health == 0) {
		instance_destroy();
	}
	
}
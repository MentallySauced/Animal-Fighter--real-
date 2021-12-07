function scrPlayer2(){

	// basic Jumping
	y = y+grav;
	grav += gravDelta;
	if (grav >= gravMax) {
		grav = gravMax;
	}
	// test commit
	
	// Jumping and falling
	if (!jumping) {
		if (keyboard_check(vk_up)){
			grav = gravJump;
			jumping = true;
		}
	}
	if (grav < 0) {
		sprite_index = Cow_Jump;
	} else {
		if (jumping) {
			sprite_index = Cow_Jump;
		} else {
			grav = 0;
		}
	}
		
	
	// Walking
	if (keyboard_check(vk_left)) {
		dir = 1;
		image_xscale = dir;
		if (!jumping && !falling){
			sprite_index = Cow_Walk;
		}
		x = x-xspeed;
	} else if (keyboard_check(vk_right)) {
		dir = -1;
		image_xscale = dir;
		if (!jumping && !falling){
			sprite_index = Cow_Walk;
		}
		x = x+xspeed;
	}
	
	
	// Attacks
	if (keyboard_check(ord("/"))) {
		sprite_index = Cow_Melee_Attack;
		attacking = true;
		alarm[4] = 2;
	}
	
	if (global.p2health == 0) {
		instance_destroy();
	}
	
}
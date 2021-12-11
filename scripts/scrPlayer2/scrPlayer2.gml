function scrPlayer2(){
	keyLeft = keyboard_check(vk_left);
	keyRight = keyboard_check(vk_right);
	keyUp = keyboard_check(vk_up);
	keyAttack = keyboard_check(ord("/"));
	
	hSpeed = (keyRight - keyLeft) * walkSpeed;
	
	// basic Jumping
	y = y+grav;
	grav += gravDelta;
	if (grav >= gravMax) {
		grav = gravMax;
	}
	
	// Jumping and falling
	if (!jumping) {
		if (keyUp){
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
	
	x += hSpeed;
	
	if (hSpeed != 0) {
		image_xscale = -sign(hSpeed);
		if (sprite_index != Cow_Walk) {
			image_index = 2
		}
		sprite_index = Cow_Walk;
	} else {
		sprite_index = Cow_Idle;
	}
	
}
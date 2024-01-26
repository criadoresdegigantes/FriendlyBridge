if (distance_to_object(oPerson) <= 5 and apertado == false){
	with(oPerson) {
		if (keyboard_check(ord("E"))) {
			virado = true
			can_move = false
			with(instance_nearest(x, y, obj_mao)) {
				apertado = true
				
				randomize()
				rotation = random_range(15,20);
				direc = random_range(-1,1);
				
				
			}
		}
	}
}
/*
else if (apertado == true) {
	
	with(oPerson) {
		if (virado) {
			sprite_index = spr_personagem_costas
		}
	}
}
*/
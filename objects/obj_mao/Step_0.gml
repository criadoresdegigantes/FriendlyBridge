if (distance_to_object(oPerson) <= 5 and apertado == false){
	with(oPerson) {
		if (keyboard_check(ord("E"))) {
			virado = true

			with(instance_nearest(x, y, obj_mao)) {
				apertado = true
				
			}
		}
	}
} else if (apertado == true) {
	with(oPerson) {
		if (virado) {
		sprite_index = spr_personagem_costas
		
		
		}
	}
}

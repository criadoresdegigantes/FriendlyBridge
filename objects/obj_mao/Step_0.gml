
if (distance_to_object(oPerson) <= 20 and apertado == false) {
	with(oPerson) {
		if (keyboard_check(ord("E"))) {
			with(instance_nearest(x, y, obj_mao)) {
				apertado = true
			}
		
			can_move = false
			sprite_index = spr_personagem_costas
		}
	}
}
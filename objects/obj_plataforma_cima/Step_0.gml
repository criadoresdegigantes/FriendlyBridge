if (instance_exists(oPerson)) {
	if (bbox_bottom >= oPerson.bbox_bottom){
		sprite_index = spr_plataforma_cima;
	} else {
		sprite_index = -1; 
	}

	with(oPerson){
		var tecla_baixo = keyboard_check_pressed(ord(vk_down));

		if(tecla_baixo){
			other.sprite_index = -1
		}
	}
	}
if (distance_to_object(oPerson) <= 25 and apertado = false )	{
	player_perto = true
	draw_sprite_ext(spr_letraE, 0, x, y - 12, .4, .4, 0, c_white, 1);
}else{
	
		player_perto = false
	}
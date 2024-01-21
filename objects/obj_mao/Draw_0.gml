if (distance_to_object(oPerson) <= 25 and apertado = false )	{
	player_perto = true
	
	draw_sprite_ext(spr_letraE, 0, x, y - 12, .35, .35, 0, c_white, 1);
	draw_text_ext_transformed(x + 8, y -16, "para Interagir", 1, 250, 0.3, 0.3, 0)
	draw_text_ext_transformed(x - 32, y -16, "Pressione ", 1, 250, 0.3, 0.3, 0)

}else{

		player_perto = false
	}
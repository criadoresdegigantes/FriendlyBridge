if (distance_to_object(oPerson) <= 5 and apertado = false )	{
	draw_sprite_ext(spr_letraE, 0, x, y - 20, .35, .35, 0, c_white, 1)
	draw_text_ext_transformed(x + 8, y -24, "para Interagir", 1, 250, 0.3, 0.3, 0)
	draw_text_ext_transformed(x - 45, y -24, "Pressione ", 1, 250, 0.3, 0.3, 0)

}

if (apertado) {
	draw_sprite_ext(spr_mao_negativa, 0, x, y, 1, 1, 0, c_white, 1);

}
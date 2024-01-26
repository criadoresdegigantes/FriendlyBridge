if (distance_to_object(oPerson) <= 20) {
	draw_sprite_ext(spr_letraE, 0, x - 0, y - 15, .35, .35, 0, c_white, 1)
	draw_text_ext_transformed(x + 35, y -20, "para Interagir", 1, 250, 0.3, 0.3, 0)
	draw_text_ext_transformed(x - 28, y -20, "Pressione ", 1, 250, 0.3, 0.3, 0)

}

if (apertado) {
	draw_sprite_ext(spr_mao_negativa, 0, x, y, 1, 1, rotation * direc, c_white, 1)

}
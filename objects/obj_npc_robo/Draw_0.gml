/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self()//redesenhar

if (distance_to_object(oPerson) <= 20) {
	draw_sprite_ext(spr_letraF, 0, x, y - 20, .35, .35, 0, c_white, 1)
	draw_text_ext_transformed(x + 8, y -24, "para Interagir", 1, 250, 0.3, 0.3, 0)
	draw_text_ext_transformed(x - 32, y -24, "Pressione ", 1, 250, 0.3, 0.3, 0)

}







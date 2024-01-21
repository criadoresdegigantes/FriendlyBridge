/// @description Inserir descrição  aqui
// Você pode escrever seu código neste editor

if (player_perto == true) {
	with(oPerson) {
		if (keyboard_check(ord("E")) and obj_mao.apertado == false) {
			obj_mao.apertado = true
			can_move = false
			sprite_index = spr_personagem_costas
		
		}
	}
}

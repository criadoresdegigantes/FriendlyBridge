/// @description Inserir descrição  aqui
// Você pode escrever seu código neste editor

if (player_perto == true) {
	with(oPerson) {
		if (keyboard_check(ord("E")) and obj_mao.apertado == false) {
			instance_nearest(x,y, obj_mao).apertado = true
			sprite_index = spr_personagem_costas
		
		}
	}
}

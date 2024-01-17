//VARIÁVEL QUE VAI GUARDAR A ARRAY DAS AÇÕES
cutscene = -1;

//VARIÁVEL QUE VAI CHECAR EM QUE AÇÃO ESTAMOS
action = 0;

timer = 0;

cutscene = [
	[cutscene_wait, 1],
	[cutscene_change_sprite, oPerson, spr_personagem_correndo_direita],
	[cutscene_walk_right, oPerson, 2, 1],
	[cutscene_wait, 2],
	[cutscene_change_sprite, oPerson, spr_personagem_parado_esquerda],
	[cutscene_walk_left, obj_npc_hdc, 2.5, 1],

]









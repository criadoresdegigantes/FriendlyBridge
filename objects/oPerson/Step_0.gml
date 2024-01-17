#region move e colisão

/// @description 
//--> MOVE
reset = keyboard_check(ord("T"));
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));
cima = keyboard_check_pressed(vk_space);


hveloc = (direita-esquerda) * veloc;

if direita {
	
	direct = 0;
	sprite_index = spr_personagem_correndo_direita;
	
} else if esquerda {
	
	direct = 1;
	sprite_index = spr_personagem_correndo_esquerda; 
	
} else {
	
	if direct = 0 {
		
		sprite_index = spr_personagem_parado_direita;
		
	}else if direct = 1 {
		
		sprite_index = spr_personagem_parado_esquerda;
		
	}
	
}

if reset {
	
	room_restart();
	
}

if !place_meeting(x, y + 1, oParede) {
	
	vveloc += gravidade;
	
} else {

if cima{
	audio_play_sound(som_pulo,10, false);
	vveloc = -9;
	
	}
}

// COLISÂO
if place_meeting(x + hveloc, y, oParede){

	while !place_meeting(x + sign(hveloc), y, oParede) {
		
		x += sign(hveloc);
	
	}
	
	hveloc = 0;
	
}

 x += hveloc;
 
 
 if place_meeting(x , y + vveloc, oParede){

	while !place_meeting(x, y + sign(vveloc), oParede) {
		
		y += sign(vveloc);
	
	}
	
	vveloc = 0;
	
}
 
y += vveloc;
	
#endregion

#region dialogo
if keyboard_check_pressed((vk_enter)){
	audio_play_sound(som_mensagem,10, false);
	if (pagina < ds_grid_height(obj_dialogo.texto_grid) - 1) and ( obj_dialogo.texto_grid[# Infos.Sala, pagina]==1){
		pagina++;

	}else{
		mostrado = 0;
		pagina = 0;
	
	}

}
#endregion 
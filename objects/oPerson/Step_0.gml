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
	if (pagina < array_length(obj_npc_hdc.mensagens)){
		pagina++;

	}else{
		mostrado = 0;
		pagina = 0;
	
	}

}
#endregion 



#region Dialogo Array
/*
if keyboard_check(ord("F")){
	audio_play_sound(som_mensagem, 10, false);
	mostrados = 1
}

if mostrados == 1{
	switch sala{
		case 1:
		show_debug_message(obj_npc_hdc.mensagens[obj_npc_hdc.mensagem])		
		if keyboard_check_pressed((vk_enter)) and cont < array_length(obj_npc_hdc.mensagens) -1 {
			pagina ++;
			show_debug_message(obj_npc_hdc.mensagens[obj_npc_hdc.mensagem])
			cont +=1 ;
		}else if (cont >= array_length(obj_npc_hdc.mensagens)-1){
			mostrado=0
		}
	break;
	}
}
*/
#endregion

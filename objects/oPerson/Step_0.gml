#region move e colisão

/// @description 
//--> MOVE
reset = keyboard_check(ord("T"));
direita = keyboard_check(ord("D")) or keyboard_check(vk_right);
esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left);
cima = keyboard_check_pressed(vk_space);


hveloc = (direita-esquerda) * veloc;

if can_move = true {
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
}

if reset {
	
	room_restart();
	
}

if can_move == true {
	
if !place_meeting(x, y + 1, obj_colisao) {
	
	vveloc += gravidade;
	
} else {

if cima{
	audio_play_sound(som_pulo,10, false);
	vveloc = -9;
	
	}
}

// COLISÂO
if place_meeting(x + hveloc, y, obj_colisao){

	while !place_meeting(x + sign(hveloc), y, obj_colisao) {
		
		x += sign(hveloc);
	
	}
	
	hveloc = 0;
	
}

 x += hveloc;
 
 
 if place_meeting(x , y + vveloc, obj_colisao){

	while !place_meeting(x, y + sign(vveloc), obj_colisao) {
		
		y += sign(vveloc);
	
	}
	
	vveloc = 0;
	
}
 
y += vveloc;

}
#endregion

#region dialogo

var _npc = instance_nearest(x, y, obj_par_npcs)

if (conversando == true and keyboard_check_pressed((vk_enter))) {
	audio_play_sound(som_mensagem,10, false);
	switch sala {
		case 0:
			if (pagina <= array_length(_npc.mensagens0)){
				pagina++;

			}else{
				//conversando = false;
				//pagina = 0;
	
			}
		break;
		case 1:
			if (pagina <= array_length(_npc.mensagens)){
				pagina++;

			}else{
				//conversando = false;
				//pagina = 0;
	
			}
		break;
		case 2:
			if (pagina <= array_length(_npc.mensagens2)){
				pagina++;

			}else{
				//conversando = false;
				//pagina = 0;
	
			}
		break;
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

if y - 250 > room_height {
	room_restart()	

}

window_set_size(1280, 720)
//window_set_fullscreen(true)
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/*
#region dialogo 
if obj_dialogo.inicializar == true{
	//PROCURANDO
	if distance_to_object(obj_par_npcs) <= 10{
	
		if keyboard_check(ord("F")){
			audio_play_sound(som_mensagem, 10, false);
			mostrado = 1;
		}
		
	}else{
	
		mostrado = 0; 
	}

	//PINTANDO

	if mostrado == 1{
		var _npc = instance_nearest(x, y, obj_par_npcs);
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
		
		var _guil = display_get_gui_width();
		var _guia = display_get_gui_height();

		var _xx = 0;
		var _yy = _guia - 200; 
		var _c = c_black;
		var _sprite = obj_dialogo.texto_grid[# Infos.Retrato, pagina];
		//show_debug_message(obj_dialogo.texto_grid[# Infos.Retrato, pagina])
	//Lado Esquerda
		if obj_dialogo.texto_grid[# Infos.Lado, pagina] == 0 {
			draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
			draw_text(_xx + 16, _yy - 32, obj_dialogo.texto_grid[# Infos.Nome, pagina]);
			draw_text_ext(_xx + 232, _yy + 32, obj_dialogo.texto_grid[# Infos.Texto, pagina], 32, _guil - 264);
			draw_sprite_ext(_sprite, 0, 250, 380, -12, 12, 0, c_white, 1);
		
	//Lado Direito
		}else{

			draw_rectangle_color(_xx, _yy, _guil - 200, _guia, _c, _c, _c, _c, false);
			draw_text_ext(_xx + 32, _yy + 32, obj_dialogo.texto_grid[# Infos.Texto, pagina], 32, _guil - 264);
			draw_sprite_ext(_sprite, 0, _guil - 280, _guia, 12, 12, 0, c_white, 1);
		
		}
		
	}
}
#endregion
*/
#region Dialogo Array

if distance_to_object(obj_par_npcs) <= 10{
	
		if keyboard_check(ord("F")){
			audio_play_sound(som_mensagem, 10, false);
			mostrado = 1;
		}
		
	}else{
	
		mostrado = 0; 
	}

if mostrado == 1 {
	
	var _npc = instance_nearest(x, y, obj_par_npcs);
	var _mensagem = _npc.mensagens
	
	
	var _guil = display_get_gui_width();
	var _guia = display_get_gui_height();

	var _xx = 0;
	var _yy = _guia - 200; 
	var _c = c_black;
	
	show_debug_message(sala);

	if pagina <= array_length(obj_npc_hdc.mensagens) - 1 {
		switch sala {
			case 1:
				draw_rectangle_color(_xx + 100, _yy, _guil, _guia, _c, _c, _c, _c, false);
				draw_text(_xx + 16, _yy - 32, _npc.nome);
				draw_text_ext(_xx + 232, _yy + 32, obj_npc_hdc.mensagens[pagina], 32, _guil - 264);
				draw_sprite_ext(spr_face_hcd, 0, 250, 380, -12, 12, 0, c_white, 1);		
			break;
			case 2:
				draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
				draw_text(_xx + 16, _yy - 32, _npc.nome);
				draw_text_ext(_xx + 232, _yy + 32, obj_npc_hdc.mensagens2[pagina], 32, _guil - 264);
				draw_sprite_ext(spr_face_hcd, 0, 250, 380, -12, 12, 0, c_white, 1);	
			break;
		}
	
	}
		
}


#endregion
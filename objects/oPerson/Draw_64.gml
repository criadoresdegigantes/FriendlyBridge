/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

#region dialogo
/*
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
*/
#endregion

draw_text_ext_transformed(10, 30, room_speed, 3, 100, 1, 1, 0)


#region Dialogo Array

if distance_to_object(obj_par_npcs) <= 10{
	if keyboard_check(ord("F")){
		audio_play_sound(som_mensagem, 10, false);
		conversando = true
	}
		
}

if conversando == true {
	can_move = false
	var _npc = instance_nearest(x, y, obj_par_npcs);

	window_set_fullscreen(true)
	
	var _guil = display_get_gui_width(); //pega a largura da tela do visor que nesse caso é 1000
	var _guia = display_get_gui_height(); //pega a altura da tela do visor que nesse caso é 600

	var _xx = 0; //posição em relacao aoa x 
	var _yy = _guia/6  ;  //posição em relacao aoa y 
 	var _c = c_black;
	
	var largura_texto = sprite_get_width(spr_pergaminho) - 80
	
	show_debug_message(sala);

	switch sala {
		case 1:
			if pagina <= array_length(_npc.mensagens) - 1 {
				
				//draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
				draw_sprite_ext(spr_pergaminho, 0, _xx + 100, _yy, 1, 1, 0, c_white, 1);
				//draw_text(_xx + , _yy + 32, _npc.nome);
				draw_text_ext_color(_xx + 100 + largura_texto/2 + 60, _yy + 150, _npc.mensagens[pagina], 32, largura_texto, _c, _c, _c, _c, 1);
				//draw_sprite_ext(_npc.face, 0, 250, 380, -12, 12, 0, c_white, 1);
				draw_sprite_ext(spr_teclaEnter, 0, _xx + 100 + sprite_get_width(spr_pergaminho) - 70,  _yy+  + sprite_get_height(spr_pergaminho) - 80 , 1, 1, 0, c_white, 1);
				
			} else {
				conversando = false
				pagina = 0
			}	
		break;
		case 2:
			if pagina <= array_length(_npc.mensagens2) - 1 {
				
				//draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
				draw_sprite_ext(spr_pergaminho, 0, _xx + 100, _yy, 1, 1, 0, c_white, 1);
				//draw_text(_xx + , _yy + 32, _npc.nome);
				draw_text_ext_color(_xx + 100 + largura_texto/2 + 60, _yy + 150, _npc.mensagens2[pagina], 32, largura_texto, _c, _c, _c, _c, 1);
				//draw_sprite_ext(_npc.face, 0, 250, 380, -12, 12, 0, c_white, 1);
				draw_sprite_ext(spr_teclaEnter, 0, _xx + 100 + sprite_get_width(spr_pergaminho) - 70,  _yy+  + sprite_get_height(spr_pergaminho) - 80 , 1, 1, 0, c_white, 1);

			} else {
				conversando = false
				pagina = 0
			}	
		break;
		
		case 3:
			if pagina <= array_length(_npc.mensagens3) - 1 {
				
				//draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
				draw_sprite_ext(spr_pergaminho, 0, _xx + 100, _yy, 1, 1, 0, c_white, 1);
				//draw_text(_xx + , _yy + 32, _npc.nome);
				draw_text_ext_color(_xx + 100 + largura_texto/2 + 60, _yy + 150, _npc.mensagens3[pagina], 32, largura_texto, _c, _c, _c, _c, 1);
				//draw_sprite_ext(_npc.face, 0, 250, 380, -12, 12, 0, c_white, 1);
				draw_sprite_ext(spr_teclaEnter, 0, _xx + 100 + sprite_get_width(spr_pergaminho) - 70,  _yy+  + sprite_get_height(spr_pergaminho) - 80 , 1, 1, 0, c_white, 1);
					
			} else {
				conversando = false
				pagina = 0
			}
		break;
		
		case 4:
			if pagina <= array_length(_npc.mensagens4) - 1 {
				
					//draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
						draw_sprite_ext(spr_pergaminho, 0, _xx + 100, _yy, 1, 1, 0, c_white, 1);
						//draw_text(_xx + , _yy + 32, _npc.nome);
						draw_text_ext_color(_xx + 100 + largura_texto/2 + 60, _yy + 150, _npc.mensagens4[pagina], 32, largura_texto, _c, _c, _c, _c, 1);
						//draw_sprite_ext(_npc.face, 0, 250, 380, -12, 12, 0, c_white, 1);
						draw_sprite_ext(spr_teclaEnter, 0, _xx + 100 + sprite_get_width(spr_pergaminho) - 70,  _yy+  + sprite_get_height(spr_pergaminho) - 80 , 1, 1, 0, c_white, 1);
					
			} else {
				conversando = false
				pagina = 0
			}
		break;
	}
} else {
	conversando = false
	pagina = 0
	can_move = true
	
}


#endregion
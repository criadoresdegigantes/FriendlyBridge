// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_textos(){
	switch obj_dialogo.npc_nome{
		case "Primeiro Texto":
	
				ds_grid_add_text("Primeiro Texto", spr_face_hcd, 0, "Personagem 1",1);
				ds_grid_add_text("Segundo Texto", spr_face_vermei, 1, "Personagem 2",1);
				ds_grid_add_text("Terceiro Texto", spr_face_hcd, 0, "Personagem 1", 1);
				ds_grid_add_text("Quarto Texto", spr_face_hcd, 0, "Personagem 1", 1);
		
				ds_grid_add_text("Quinto Texto", spr_face_hcd, 0, "Silas 1", 2);
				ds_grid_add_text("Sexta Texto", spr_face_vermei, 1, "Silas 2",2);
				ds_grid_add_text("Sétimo Texto", spr_face_hcd, 0, "Silas 1", 2);
				ds_grid_add_text("Oitavo Texto", spr_face_hcd, 0, "Silas 1", 2);
			
		break;
	
	}
}

function ds_grid_add_row(){
	
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid) + 1);
	return(ds_grid_height(_grid) - 1);

}

function ds_grid_add_text(){
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
	_grid[# 4, _y] = argument[4];

}

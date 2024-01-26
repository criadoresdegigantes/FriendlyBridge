/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _tipo = event_data[? "event_type"];

if (_tipo == "sprite event") {
	var _msg = event_data[? "message"];
	
	switch(_msg) {
		case "interagirFim":
			virado = false
			can_move = true
		break;
	
	}
}



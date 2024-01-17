function action_end(){
	action++;
	
	if action >= array_length(cutscene){
		instance_destroy();	
			
	}
	
}

function cutscene_wait(_segundos){
	
	timer++;
	
	if timer >= room_speed * _segundos{
		timer = 0;
		action_end();
	}

}

function cutscene_walk_right(_id, _segundos, _spd){
	_id.x += _spd;
	timer++;
	
	if timer >= room_speed * _segundos{
		timer = 0;
		action_end();
	
	}

}

function cutscene_walk_left(_id, _segundos, _spd){
	_id.x -= _spd;
	timer++;
	
	if timer >= room_speed * _segundos{
		timer = 0;
		action_end();
	
	}

}

function cutscene_change_sprite(_id, _spr){
	_id.image_index = 0;
	_id.sprite_index = _spr;
	action_end();

}
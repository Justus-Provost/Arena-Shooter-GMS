if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x,obj_player.y,spd);
	
}

image_angle = direction;

if (hp <= 0)
{
	with (obj_score) thescore = thescore + 5;
	instance_create_layer(x,y,"lay_splatter",obj_splatter);
	instance_create_layer(x,y,"lay_splatter",obj_fragment);
	audio_sound_pitch(snd_death,random_range(.8,1.2))
	audio_play_sound(snd_death,0,0);
	instance_destroy();
}
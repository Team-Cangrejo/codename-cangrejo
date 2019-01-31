/// @description 
if haveMusic == true
{
	if !audio_is_playing(sou_music_dLemon)
	{
		audio_play_sound(sou_music_dLemon,0,true);
	}
}
else
{
	audio_stop_sound(sou_music_dLemon)	
}
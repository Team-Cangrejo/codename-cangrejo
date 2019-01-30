/// @description 
var _mytime = roomTime;
if roomFinished == false
{
	roomTime+=1.25; //This is probably as close as we're gonna get to actual time. 
}
else
{
	var _seconds = _mytime div 60; 
	
	roomMinutes =  _seconds div 60
	roomSeconds = _seconds - (roomMinutes*60)
}

var _gameTime = totalTime

var _totSeconds = _gameTime div 60;

gameMinutes = _totSeconds div 60;
gameSeconds = _totSeconds - (gameMinutes*60);
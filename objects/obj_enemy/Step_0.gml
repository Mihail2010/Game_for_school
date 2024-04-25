
if (mouse_check_button_pressed(mb_left) and place_meeting(x,y,obj_player_zone))
{
hp --
}

if (hp < 0 )
{
	instance_destroy();
}
step = 0.8;
if (place_meeting(x,y,obj_player))
{

	if (x < obj_player.x-20)
	{
		x += step;
	}
	if (x > obj_player.x+20)
	{
		x -= step;
	}

	if (y < obj_player.y)
	{
		y += step;
	}

	if (y > obj_player.y)
	{
		y -= step;
	}
}

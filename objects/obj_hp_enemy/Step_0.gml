x = obj_enemy.x;
y = obj_enemy.y;

if (mouse_check_button_pressed(mb_left) and place_meeting(x,y,obj_player_zone))
{
image_index++
}
if (image_index= 14)
{
	instance_destroy()
}
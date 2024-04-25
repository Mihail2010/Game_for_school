//move
var move_up = keyboard_check(ord("W"));
var move_down= keyboard_check(ord("S"));
var move_right = keyboard_check(ord("D"));
var move_left = keyboard_check(ord("A"));
var run = keyboard_check(vk_shift);
//sprites
var move_right_spr = spr_right_walk;
var move_left_spr = spr_left_walk;
var player_normal_hits_left = spr_player_normal_hits_left;
var player_normal_hits_right = spr_player_normal_hits_right;
var player_stop_left = spr_player_stop_left;
var player_stop_right = spr_player_stop_right;
var player_jerk_hits_left = spr_player_attack_jerk_left;
var player_jerk_hits_right = spr_player_attack_jerk_right;
//attack
var hit_normal = mouse_check_button(mb_left);
var hit_jerk = keyboard_check(vk_shift);
//other



if (!run)
{
time = 0.5;
if(timer > 0)
{
timer = timer - delta_time/1000000;
}
else timer = -1;
time = ceil(timer)
if (timer = -1)
{
	if (global.endurance < 10)
	{
		global.endurance += 1;
	}
	timer = 0.5;
}
}


if (run and global.endurance>1)
{
	image_speed = 2;
	global.player_speed = 1.5;
	time_run = 0.1;
if(timer_run > 0)
{
timer_run = timer_run - delta_time/1000000;
}
else timer_run = -1;
time_run = ceil(timer_run)
if (timer_run = -1)
{
	global.endurance--
	timer_run = 0.1;
}
}



if (!run)
{
	global.player_speed = 1
}






if (move_up)
{
	y -= global.player_speed;
}
else if (move_down)

{
	y += global.player_speed;
}
else if (move_right)
{
	x += global.player_speed;
	sprite_index = move_right_spr;
	image_speed = 1;
	position_stop = "right";
}
else if (move_left)
{
	x -= global.player_speed;
	sprite_index = move_left_spr;
	image_speed = 1;
	position_stop = "left";
}
else if (hit_normal)
{
	if(position_stop = "left")
	{
	global.player_hit = 1;
	sprite_index = player_normal_hits_left;
	image_speed = 1;
		
	}
	if(position_stop = "right")
	{
	global.player_hit = 1;
	sprite_index = player_normal_hits_right;
	image_speed = 1;
	}
}
//else if (hit_jerk and global.endurance >3)
//{
//	if(position_stop = "left" )
	//{
//	//global.player_attack =2;
//	global.player_hit = 2;
//	sprite_index = player_jerk_hits_left;
//	image_speed = 1;
//	x -= 16;
//	global.endurance -= 4;
//	}

	
	
//	if(position_stop = "right")
//	{
//	global.player_attack =2;
//	global.player_hit = 2;
//	sprite_index = player_jerk_hits_right;	
//	image_speed = 1;
//	x += 16;
//	global.endurance -= 4;
//	}
//}

else
{
	
	if(position_stop = "left")
	{
		sprite_index = player_stop_left;
	}
	if(position_stop = "right")
	{
		sprite_index = player_stop_right;

	}
}




if(global.hp_player < 1)
{
	room_goto(rm_game_over);
}


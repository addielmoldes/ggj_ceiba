/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, obj_player){
	self.speed = 0;
	if(dir == 0) self.sprite_index = spr_atk_right_enem3;
	if(dir == 180) self.sprite_index = spr_atk_left_enem3;
	if(dir == 90) self.sprite_index = spr_atk_up_enem3;
	if(dir == 270) self.sprite_index = spr_atk_down_enem3;
}
else{
	move_towards_point(obj_player.x, obj_player.y, 1);
}

if (hspeed > 0){
	self.sprite_index = spr_right_enem3;
	dir = 0;
}

if(hspeed < 0){
	self.sprite_index = spr_left_enem3;
	dir = 180;
}

if (vspeed < 0 && hspeed > -0.5 && hspeed < 0.5){
	self.sprite_index = spr_up_enem3;
	dir = 90;
}

if (vspeed > 0 && hspeed > -0.5 && hspeed < 0.5){
	self.sprite_index = spr_down_enem3;
	dir = 270;
}
move_bounce_solid(false);
/// @description Movimiento

if keyboard_check(ord("A")) && self.x > 0{
	self.sprite_index = spr_left;
	self.x -= 2;
	dir = 0;
}

if keyboard_check(ord("D")) && self.x + self.sprite_width < room_width{
	self.sprite_index = spr_right;
	self.x += 2;
	dir = 180;
}

if keyboard_check(ord("W")) && self.y > 0{
	self.sprite_index = spr_up;
	self.y -= 2;
	dir = 90;
}

if keyboard_check(ord("S")) && self.y + self.sprite_height < room_height{
	self.sprite_index = spr_down;
	self.y += 2;
	dir = 270;
}

if (keyboard_check(ord("A")) && keyboard_check(ord("W"))) || (keyboard_check(ord("A")) && keyboard_check(ord("S"))){
	self.sprite_index = spr_left;
}

if (keyboard_check(ord("D")) && keyboard_check(ord("W"))) || (keyboard_check(ord("D")) && keyboard_check(ord("S"))){
	self.sprite_index = spr_right;
}



if keyboard_check(vk_nokey){
	switch(dir){
		case 0:
			self.sprite_index = spr_stand_left;
			break;
		case 180:
			self.sprite_index = spr_stand_right;
			break;
		case 90:
			self.sprite_index = spr_stand_up;
			break;
		case 270:
			self.sprite_index = spr_stand_down;
			break;
	}
}

if keyboard_check_pressed(ord("Q")){
		switch(dir){
		case 0:
			self.sprite_index = spr_atk_left;
			break;
		case 180:
			self.sprite_index = spr_atk_right;
			break;
		case 90:
			self.sprite_index = spr_atk_up;
			break;
		case 270:
			self.sprite_index = spr_atk_down;
			break;
	}
}

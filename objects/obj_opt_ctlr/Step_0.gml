/// @description Insert description here
// You can write your code in this editor
global.wwidth = surface_get_width(application_surface);
global.fscreen = window_get_fullscreen();

switch(global.wwidth){
	case 1920:
		obj_res_fhd.image_index = 1;
		obj_res_uhd.image_index = 0;
		obj_res_hd.image_index = 0;
		obj_res_min.image_index = 0;
		break;
	case 1366:
		obj_res_uhd.image_index = 1;
		obj_res_fhd.image_index = 0;
		obj_res_hd.image_index = 0;
		obj_res_min.image_index = 0;
		break;
	case 1280:
		obj_res_hd.image_index = 1;
		obj_res_uhd.image_index = 0;
		obj_res_fhd.image_index = 0;
		obj_res_min.image_index = 0;
		break;
	case 800:
		obj_res_min.image_index = 1;
		obj_res_uhd.image_index = 0;
		obj_res_hd.image_index = 0;
		obj_res_fhd.image_index = 0;
		break;
}

if global.fscreen{
	obj_fscr_si.image_index = 1;
	obj_fscr_no.image_index = 0;
}
else{
	obj_fscr_no.image_index = 1;
	obj_fscr_si.image_index = 0;
}
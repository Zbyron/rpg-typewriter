/// @description Insert description here
// You can write your code in this editor
if(!auto){
	if(keyboard_check_pressed(vk_space)){
		event_user(0)
		
	}
}
if(lineFinished){
	lineFinishedClock++
	if (auto && lineFinishedClock > autoContinueTimer)
		event_user(0)
}


switch(position){
	case 0: //BOTTOM
		yOrigin = display_get_gui_height()  - sprite_get_height(spr_textBox) - 20
	break 
	case 1: //TOP
		yOrigin = 20
	break
}

if(portsInBox){
	xBuffer = 40 + sprite_get_width(ports[page])
	boxWidth = sprite_get_width(spr_textBox) - (xBuffer)
	
}
else{
	xBuffer = 20
	boxWidth = sprite_get_width(spr_textBox) - (2*xBuffer)
	
}
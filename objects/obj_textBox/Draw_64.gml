/// @description Draw Dialog

//story BG
draw_sprite(bgImage,0,0,0)

//draw large port 
if (!portsInBox)
	draw_sprite(ports[page],0,(room_width/2) - (sprite_get_width(ports[page])/2),  room_height - sprite_get_height(ports[page]))

//draw box
draw_sprite(spr_textBox,0,xOrigin, yOrigin)

//draw ports in the message box
if (portsInBox)
	draw_sprite(ports[page],0,xOrigin + 20, yOrigin + 20 )

//Draw Name
draw_set_color(c_yellow)
draw_set_font(fnt_rpgTextName)
draw_text(xOrigin + xBuffer,yOrigin + yBuffer/2,name[page])

//Draw text
draw_set_font(fnt_rpgTextDialog)
draw_set_color(c_white)

if (charCount < string_length(text[page]) + 1)
	charCount += .4
else {
	lineFinished = true
}
textPart = string_copy(text[page], 1, charCount)
stringHeight = string_height(text[page]) + 10

draw_text_ext(xOrigin + xBuffer,yOrigin+stringHeight + yBuffer, textPart, stringHeight, boxWidth)


if (lineFinished && lineFinishedClock > room_speed/10 ){
	//draw spining wait wheel
	var nextCursorXOffset = 0 
	var nextCursor = spr_textWaiting //default should say tap
	if (portsInBox)
		nextCursorXOffset = 200 
	else{
		nextCursorXOffset = 18
	}
	if (auto){
		nextCursor = spr_textWaiting //default should say tap
		draw_sprite(spr_textWaiting,image_index/5,xOrigin + boxWidth - sprite_get_width(spr_textWaiting) + nextCursorXOffset,yOrigin + boxHight - sprite_get_height(spr_textWaiting) - 10)
	}
	else{
		var continueText = "[TAP TO CONTINUE]"
		draw_set_font(fnt_rpgTextContinue)
		draw_text(xOrigin + boxWidthOG - string_width(continueText), yOrigin + boxHight - string_height(continueText) - 20, continueText)// maybe use atex here?
	}
}
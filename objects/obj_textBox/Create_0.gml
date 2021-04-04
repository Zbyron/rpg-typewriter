/// @Setup

text = ["Good work, Janis!",
"This isn't the end of the enemy however", 
"There wont be much time for a break sadly. We'll be moving on to the next operation!",
"Understood."]

name = ["op",
"op",
"op",
"Janis"]

portsInBox = false
ports = [spr_char_op, 
	spr_char_op, 
	spr_char_op, 
	spr_char_janis]

position = 0
showBg = true
bgImage = spr_storyBG_stagingOffice
xOrigin = 9 //the x position of the textbox
yOrigin = display_get_gui_height()  - sprite_get_height(spr_textBox) - 20
xBuffer = 20 //shifts the x position of the text
yBuffer = 40 //shifts the y position of the text
auto = false // auto trigger the next line
autoContinueTimer = room_speed * 2 // timer used for the auto continue feature
page = 0 // index of the line of text 
lineFinishedClock = 0 //Increments every step after a line finishes typing
boxWidthOG = sprite_get_width(spr_textBox) - (2*xBuffer)
boxWidth = sprite_get_width(spr_textBox) - (2*xBuffer)
boxHight = sprite_get_height(spr_textBox)
charCount = 0
lineFinished = false

///////remove later
///temp
if(!portsInBox){
	//large 
	ports = [spr_char_op, 
	spr_char_op, 
	spr_char_op, 
	spr_char_janis]

}
else{
	//box
	ports = [spr_charBox_op, 
	spr_charBox_op, 
	spr_charBox_op, 
	spr_charBox_janis]
}
//temp
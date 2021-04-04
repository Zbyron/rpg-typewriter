/// @description progress text
if(lineFinished){
	if(page + 1 < array_length(text)){
		page +=1	
		charCount = 0
		lineFinished = false
		lineFinishedClock = 0
	}else{
		//end of dialog	
	}
}
else{
	charCount = string_length(text[page]) + 1
	lineFinished = true
}
function draw_text_outlined() {
	// @func draw_text_outlined(x, y, outline color, string color, string)  
	// @desc user Allen_Production
	//			https://www.reddit.com/r/gamemaker/comments/3ryb11/basic_outlined_text_script/
	// @args {real} x - x position to draw
	// @args {real} y - y position to draw
	// @args {string} outline_color - color of outline
	// @args  {string} color - color of string
	// @args {string} string - what to draw

	var xx, yy;
	xx = argument[0];  
	yy = argument[1];  

	//Outline  
	draw_set_color(argument[2]);  
	draw_text(xx+1, yy+1, argument[4]);  
	draw_text(xx-1, yy-1, argument[4]);  
	draw_text(xx,   yy+1, argument[4]);  
	draw_text(xx+1,   yy, argument[4]);  
	draw_text(xx,   yy-1, argument[4]);  
	draw_text(xx-1,   yy, argument[4]);  
	draw_text(xx-1, yy+1, argument[4]);  
	draw_text(xx+1, yy-1, argument[4]);  

	//Text  
	draw_set_color(argument[3]);  
	draw_text(xx, yy, argument[4]);  


}

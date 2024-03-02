/// @description 
draw_set_halign(fa_center);
draw_set_valign(fa_top);
// Get current message data
var _arr = messages[| messageID];
var _name = _arr[MSG.NAME];
var _image = _arr[MSG.IMAGE];

// Set text font
draw_set_font(fnt_mine);

// Draw textbox
draw_9slice(x, y, width, height, spr_textbox, 0);

// Draw position
var _drawX = x + padding;
var _drawY = y + padding;

// Text color
draw_set_color(c_black);

// Draw name
draw_text_transformed(width/2, _drawY,_name,1.5,1.5,0);

_drawY += string_height(_name);

// Draw image
if (sprite_exists(_image)) {
	var _imageW = sprite_get_width(_image);
	var _imageH = sprite_get_height(_image);
	
	_drawY += +padding;
	
	
	
	// Draw
	draw_sprite(_image, image_index/9, width/2, _drawY);
	
	// Offset drawing position for text
	//_drawX += _imageW + padding;
	_drawY += +padding+_imageH;
	// Get maximum width for text
	var _maxW = width - (_drawX + padding);

	// Draw text
	draw_text_ext(width/2, _drawY, messageText, -1, _maxW);

	// Reset
	draw_set_color(c_white)
	draw_set_halign(fa_center);
}else{
	draw_set_valign(fa_center);
	_drawY += (height/3)+padding;
	// Get maximum width for text
	var _maxW = width - (_drawX + padding);

	// Draw text
	draw_text_ext(width/2, _drawY, messageText, -1, _maxW);

	// Reset
	draw_set_color(c_white)
	draw_set_halign(fa_center);
}
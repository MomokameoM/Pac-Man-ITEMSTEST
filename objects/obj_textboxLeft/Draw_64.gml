/// @description 
draw_set_halign(fa_left);
draw_set_valign(fa_top);
// Get current message data
var _arr = messages[| messageID];
var _name = _arr[MSGL.NAME];
var _image = _arr[MSGL.IMAGE];

// Set text font
draw_set_font(fnt_min);

// Draw textbox
draw_9slice(x, y, width, height, spr_textbox, 0);

// Draw position
var _drawX = x + padding;
var _drawY = y + padding;

// Draw image
if (sprite_exists(_image)) {
	var _imageW = sprite_get_width(_image);
	var _imageH = sprite_get_height(_image);
	
	// Draw
	draw_sprite(_image, 0, _drawX, _drawY );
	
	// Offset drawing position for text
	_drawX += _imageW + padding;
}

// Text color
draw_set_color(c_black);

// Draw name
draw_text(_drawX, _drawY, _name);

_drawY += string_height(_name) + padding;

// Get maximum width for text
var _maxW = width - (_drawX + padding);

// Draw text
draw_text_ext(_drawX, _drawY, messageText, -1, _maxW);

// Reset
draw_set_color(c_white)
draw_set_halign(fa_center);
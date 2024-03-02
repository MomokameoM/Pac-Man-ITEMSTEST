/// @description 
// Messages
messages = ds_list_create();
messageID = 0;

// Current message
messageText = "";
messageChar = 0;
messageSpeed = 0.3;
//TEXTBOX PROPERTIES
var boxSizeX=1;
var boxSizeY=0.6;
var boxPadding=20//px

// Message properties
enum MSGL {
	TEXT,
	NAME,
	IMAGE
}

// GUI dimensions
var _guiW = display_get_gui_width();
var _guiH = display_get_gui_height();

// Textbox dimensions
height = floor((_guiH * boxSizeY)-boxPadding);
width = floor((_guiW * boxSizeX)-(boxPadding*2));

// Position on screen
x = 0+boxPadding;
y = (_guiH/5);
//y = _guiH - height+boxPadding;

// Other properties
padding = 32;
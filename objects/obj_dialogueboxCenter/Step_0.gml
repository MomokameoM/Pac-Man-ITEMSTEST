/// @description 
// Get current message
var _arr = messages[| messageID];
//instance_deactivate_all(true);

var _text = _arr[MSG.TEXT];

// Get message string
messageText = string_copy(_text, 1, messageChar);

// String not fully drawn
if (messageChar <= string_length(_text)){
	messageChar += messageSpeed;
	if (keyboard_check_pressed(vk_enter)) {
		messageChar += string_length(_text);
	}
	
}
// String fully drawn
else if (keyboard_check_pressed(vk_enter)) {
	// Go to next message
	if (messageID < ds_list_size(messages) - 1) {
		messageID++;
		messageChar = 0;
	}
	// Close textbox
	else {
		instance_destroy(obj_enterFloat);
		instance_activate_all();
		instance_create_layer(0,0,"lyr_top",obj_controlTuto);
		instance_destroy();
	}
}
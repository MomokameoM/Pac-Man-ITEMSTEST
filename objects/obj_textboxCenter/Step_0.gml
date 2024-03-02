/// @description 
// Get current message
var _arr = messages[| messageID];
//instance_deactivate_all(true);

var _text = _arr[MSG.TEXT];

// Get message string
messageText = string_copy(_text, 1, messageChar);

messageChar = string_length(_text);

// String fully drawn
if (keyboard_check_pressed(vk_enter)) {
	// Go to next message
	if (messageID < ds_list_size(messages) - 1) {
		messageID++;
		messageChar = 0;
	}
	// Close textbox
	else {
		instance_destroy(obj_enterFloat);
		audio_play_sound(snd_intro,80,0);
		instance_destroy();
	}
}
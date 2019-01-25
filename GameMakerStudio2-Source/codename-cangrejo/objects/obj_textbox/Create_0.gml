//Messages go into an array, starting at 0
message[0] = "There is some cool text that goes here!";

message_current = 0; //0 is the first number in our array. This tracks where we are in our messages as well.
message_end = array_length_1d(message)-1; //the last message in the array will always be this formula.
message_draw = ""; //this is what we 'write' out. It's blank right now
message_speed = 0.8; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn


message_length = string_length(message[message_current]); //get the number of characters in the first message
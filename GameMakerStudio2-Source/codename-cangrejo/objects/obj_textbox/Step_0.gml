/// @description 
if (characters < message_length) //if current character count is less than the amount in current message
{     
    characters += message_speed;     //draw characters at message speed
    message_draw = string_copy(message[message_current], 0, characters);    //copy string to current character
} 
else   //if current character is more than the amount in the current message
{ 
    if (keyboard_check_pressed(ord("Z"))) //if we press Z...
    { 
        if (message_current < message_end)  //if there are more messages left to show
        {
            message_current += 1; //increase the message by 1
            message_length = string_length(message[message_current]);  //get the new character length for message
            characters = 0; //set the characters back to 0
            message_draw = ""; //clear the drawn text
        }
        else  //if our messages are done
        {
            instance_destroy(); //destroy the object
        }
    }
}
kLeft = keyboard_check(ord("A"))
kRight = keyboard_check(ord("D"))
kUp = keyboard_check(ord("W"))
kDown = keyboard_check(ord("S"))
kSpace = keyboard_check_pressed(vk_space)
rotateR = keyboard_check_pressed(vk_right)
rotateL = keyboard_check_pressed(vk_left)


//for debug purposes - remove on release
restart = keyboard_check_pressed(ord("R"))

if restart{game_restart()}
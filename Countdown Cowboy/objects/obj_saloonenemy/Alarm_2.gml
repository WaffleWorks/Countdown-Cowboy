if sprite_index != shoot_sprite and sprite_index != hit_sprite and global.success = false
{
	sprite_index = shoot_sprite
	alarm[2] = 15//10
}else if sprite_index != hit_sprite and global.success = false
{
	image_index = 0
}
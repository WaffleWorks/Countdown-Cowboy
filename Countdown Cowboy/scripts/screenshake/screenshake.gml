// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_time, _magnitude, _fade)
{
   with (obj_screenshake)
   {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude / 40;
      shake_fade = _fade;
   }
}
if image_xscale < 1 and image_yscale < 1 and expanded = false
{
	image_xscale += (1/30)
	image_yscale += (1/30)
}else
{
	expanded = true
}

if expanded = true and image_alpha > 0
{
	image_alpha -= (1/15)
	if image_alpha <= 1
	{
		image_xscale -= (1/30)
		image_yscale -= (1/30)
	}
}else if image_alpha <= 0
{
	instance_destroy()
}
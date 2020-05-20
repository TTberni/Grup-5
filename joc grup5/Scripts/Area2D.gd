extends Area2D



func _process(delta):
	mou()
func mou():
	 $"..".offset += 2
	 if $"..".offset >= 111.65:
		 $AnimatedSprite.flip_h = true
	 else:
		 $AnimatedSprite.flip_h = false
		
		

func anima(velocitat):
	if velocitat < 0:
		$AnimatedSprite.flip_h = true
	if velocitat > 0:
		$AnimatedSprite.flip_h = false




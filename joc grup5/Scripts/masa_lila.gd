extends Area2D




func _process(delta):
	mou()
func mou():
	 $"..".offset += 2
	 if $"..".offset >= 263.09:
		 $AnimatedSprite.flip_h = true
	 else:
		 $AnimatedSprite.flip_h = false
		
		



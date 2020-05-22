extends Area2D


func _process(delta):
	mou()
func mou():
	 $"..".offset += 2
	 if $"..".offset >= 54.86:
		 $AnimatedSprite.flip_h = false
	 else:
		 $AnimatedSprite.flip_h = true
		
		


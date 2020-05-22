extends Area2D


func _process(delta):
	mou()
func mou():
	 $"..".offset += 10
	 if $"..".offset >= 396.58 and $"..".offset <= 823.88:
		 $AnimatedSprite.flip_h = true
	 else:
		 $AnimatedSprite.flip_h = false
		
		


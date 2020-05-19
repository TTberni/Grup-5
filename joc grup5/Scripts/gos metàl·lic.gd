extends Area2D
var constant = 300

func _process(delta):
	mou()
func mou():
	 $Path2D/PathFollow2D.offset += 2
	 if $Path2D/PathFollow2D.offset >= 111.65:
		 $Path2D/PathFollow2D/AnimatedSprite.flip_h = true
	 else:
		 $Path2D/PathFollow2D/AnimatedSprite.flip_h = false
		
		

func anima(velocitat):
	if velocitat < 0:
		$AnimatedSprite.flip_h = true
	if velocitat > 0:
		$AnimatedSprite.flip_h = false



 

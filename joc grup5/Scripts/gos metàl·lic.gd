extends RigidBody2D
var constant = 300

signal cop
var vel_max = 0 
func _process(delta):
	mou()
func mou():
	 $"..".offset += 2
	 if $"..".offset >= 534.74:
		 $AnimatedSprite.flip_h = true
	 else:
		 $AnimatedSprite.flip_h = false
		
		

func anima(velocitat):
	if velocitat < 0:
		$AnimatedSprite.flip_h = true
	if velocitat > 0:
		$AnimatedSprite.flip_h = false

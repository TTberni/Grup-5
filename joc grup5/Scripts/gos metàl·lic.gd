extends RigidBody2D
var constant = 300

signal cop
var vel_max = 0 
func _on_gos_metllic_body_entered(body,c ):
	constant *=  -1

func _process(delta):
	var c = vel_max + constant 
	var velocitat = mou(c)
	anima(velocitat)
	return c
func mou(c):
	
	set_linear_velocity(Vector2(c, 0))
	var velocitat = c
	return velocitat


func anima(velocitat):
	if velocitat < 0:
		$AnimatedSprite.flip_h = true
	if velocitat > 0:
		$AnimatedSprite.flip_h = false

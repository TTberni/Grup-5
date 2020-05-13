extends KinematicBody2D

var velocitat = Vector2.ZERO
var vel_max = 200
var gravetat = Vector2(0, 450)


func _process(delta):
	var moviment = mou(delta)
	anima(moviment)
	
	
	
func mou(delta):
	velocitat.x = 0
	if is_on_floor():
		velocitat.y =0
	else:
		velocitat += gravetat * delta
	if Input.is_action_pressed("dreta"):
		velocitat.x += vel_max
	if Input.is_action_pressed("esquerra"):
		velocitat.x += -vel_max
	if Input.is_action_pressed("salta") and is_on_floor():
		velocitat.y += -300
		$AnimatedSprite.play("salta")
	var moviment = move_and_slide(velocitat, Vector2.UP)
	return moviment
		
func anima(moviment):
	
	if moviment.y < 0  :
		$AnimatedSprite.play("salta")
	
	if moviment.x == 0 and moviment.y == 0:
		$AnimatedSprite.play("espera")
		
	if moviment.x < 0 and is_on_floor():
		$AnimatedSprite.play("corrents")
		$AnimatedSprite.flip_h = false
		
	if moviment.x > 0 and is_on_floor():
		$AnimatedSprite.play("corrents")
		$AnimatedSprite.flip_h = true
	
	






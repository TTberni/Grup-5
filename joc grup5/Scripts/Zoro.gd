extends KinematicBody2D

#var automat = AnimationNodeStateMachinePlayback
var velocitat = Vector2.ZERO
var vel_max = 200
var gravetat = Vector2(0, 400)
var salt = Vector2 (0, -274)
signal atac
signal cop

func _ready():
	$"rang atac/CollisionShape2D".disabled
	$corre.disabled = true
#	automat =$AnimationTree.get("parameters/playback")
#	$Sprites/ataca.hide()
#	$Sprites/corre.hide()
#	$Sprites/mort.hide()
#	$Sprites/salta.hide()
#	$"rang atac/CollisionShape2D".disabled
func _process(delta):
	var moviment = mou(delta)
	anima(moviment)

func mou(delta):
	velocitat.x = 0
	
	if is_on_floor():
		velocitat.y = 0
	else:
		velocitat += gravetat*delta
		
		
	if Input.is_action_pressed("dreta"):
		velocitat.x += vel_max
	if Input.is_action_pressed("esquerra"):
		velocitat.x += -vel_max
	if Input.is_action_pressed("salta") and is_on_floor():
		velocitat = + salt
#	if Input.is_action_pressed("atacar"): 
#		$Area2D/CollisionShape2D.enabled()
#		automat.travel("ataca")
	var moviment = move_and_slide(velocitat, Vector2.UP)
	return moviment

		
func anima(moviment):
	
	
	if moviment.y < 0 and moviment.x > 0:
		$corre.disabled = true
		$espera.disabled = false
		$AnimatedSprite.play("salta")
		$AnimatedSprite.flip_h = true
		
		
	if moviment.y < 0 and moviment.x < 0:
		$espera.disabled =false
		$corre.disabled = true
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("salta")
		
	if moviment.x == 0 and is_on_floor():
		$corre.disabled = true
		$espera.disabled = false
		$AnimatedSprite.play("espera")
	
	if  moviment.x < 0  and is_on_floor():
		$espera.disabled = true
		$corre.disabled = false
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = false
		
	if moviment.x > 0 and is_on_floor():
		$espera.disabled = true
		$corre.disabled = false
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = true
	

		

func mor():
	$AnimatedSprite.play("mort")

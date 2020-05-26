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
	
#	automat =$AnimationTree.get("parameters/playback")
#	$Sprites/ataca.hide()
#	$Sprites/corre.hide()
#	$Sprites/salta.hide()
#	$"rang atac/CollisionShape2D".disabled
func _process(delta):
	var moviment = mou(delta)
	

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

		

	

		




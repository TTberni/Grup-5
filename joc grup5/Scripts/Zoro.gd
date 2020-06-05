extends KinematicBody2D

var automat = AnimationNodeStateMachinePlayback
var velocitat = Vector2.ZERO
var vel_max = 200
var gravetat = Vector2(0, 400)
var salt = Vector2 (0, -274)
signal atac
signal cop

func _ready():
	$"rang atac/CollisionShape2D".disabled = true
	automat =$AnimationTree.get("parameters/playback")
#	
func _process(delta):
	var moviment = mou(delta)
	if moviment.x == 0 and is_on_floor():
		automat.travel("espera")
		
	
func mou(delta):
	velocitat.x = 0
	
	if is_on_floor():
		velocitat.y = 0
	else:
		velocitat += gravetat*delta
	
	if Input.is_action_pressed("dreta"):
		velocitat.x += vel_max
		automat.travel("corre")
		$"rang atac/CollisionShape2D".disabled = true
		scale.x = -0.5*sign(scale.y)
		
	if Input.is_action_pressed("esquerra"):
		velocitat.x += -vel_max
		automat.travel("corre")
		$"rang atac/CollisionShape2D".disabled = true
		scale.x = 0.5*sign(scale.y)
		
	if Input.is_action_pressed("salta") and is_on_floor():
		velocitat = + salt
		automat.travel("salta")
		$"rang atac/CollisionShape2D".disabled = true
		
	if Input.is_action_pressed("atacar"): 
		$"rang atac/CollisionShape2D".disabled = false
		automat.travel("atac")
		
	var moviment = move_and_slide(velocitat, Vector2.UP)
	return moviment

	


func _on_rang_atac_body_entered(body):
	emit_signal("atac")
	

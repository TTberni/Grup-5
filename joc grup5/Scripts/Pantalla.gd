extends StaticBody2D
var capital = 0
var vides = 5222222222
func _ready():
	$Interficie.actualitza_monedes(capital)
	$Interficie.actualitza_vida(vides)
	
func _process(delta):
	if capital == 5:
		capital = 0
		vides = vides + 1
		$Interficie.actualitza_vida(vides)
		$Interficie.actualitza_monedes(capital)
	if vides == 0:
		get_tree().change_scene("res://Escenes/game_over.tscn")
		
		

func _on_moneda_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda.queue_free()
	




	



func _on_Area2D_cop():
	vides = vides -1 
	$Interficie.actualitza_vida(vides)
	print('caca')


func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play()


func _on_Area2D2_body_entered(body):
	vides = 0
	$Interficie.actualitza_vida(vides)


func _on_Area2D3_body_entered(body):
	vides = 0
	$Interficie.actualitza_vida(vides)


func _on_Area2D4_body_entered(body):
	vides = 0
	$Interficie.actualitza_vida(vides)


func _on_Zoro_atac(body):
	body.queue_free()

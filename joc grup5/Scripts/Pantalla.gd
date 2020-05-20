extends StaticBody2D
var capital = 0
var vides = 4
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
		$Zoro.mor()
		$Timer.start()
		
		

func _on_moneda_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
#	$moneda.queue_free()
	



func _on_Timer_timeout():
	get_tree().change_scene("res://Escenes/game_over.tscn")



func _on_Area2D_cop():
	vides = vides -1 
	$Interficie.actualitza_vida(vides)
	print('caca')

extends StaticBody2D
var capital = 0
var vides = 4

func _ready():
	$Interficie.actualitza_monedes(capital)
	$Interficie.actualitza_vida(vides)
	
func _process(delta):
	if capital == 15:
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
	


func _on_moneda2_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda2.queue_free()


func _on_moneda3_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda3.queue_free()


func _on_moneda4_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda4.queue_free()


func _on_moneda5_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda5.queue_free()
	


func _on_moneda6_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda6.queue_free()


func _on_moneda7_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda7.queue_free()


func _on_moneda8_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda8.queue_free()


func _on_moneda9_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda9.queue_free()


func _on_moneda11_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda11.queue_free()


func _on_moneda12_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda12.queue_free()


func _on_moneda13_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda13.queue_free()


func _on_moneda14_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda14.queue_free()

func _on_moneda15_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda15.queue_free()


func _on_moneda16_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda16.queue_free()


func _on_moneda17_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda17.queue_free()

func _on_moneda18_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda18.queue_free()


func _on_moneda19_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda19.queue_free()


func _on_moneda20_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda20.queue_free()


func _on_moneda21_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda21.queue_free()


func _on_moneda22_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda22.queue_free()


func _on_moneda23_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda23.queue_free()


func _on_moneda24_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda24.queue_free()

func _on_moneda25_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda25.queue_free()


func _on_moneda26_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda26.queue_free()


func _on_moneda27_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda27.queue_free()


func _on_moneda28_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda28.queue_free()


func _on_moneda29_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda29.queue_free()


func _on_moneda30_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda30.queue_free()


func _on_moneda31_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda31.queue_free()


func _on_moneda32_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda32.queue_free()


func _on_moneda33_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda33.queue_free()


func _on_moneda34_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda34.queue_free()


func _on_moneda35_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda35.queue_free()

func _on_moneda36_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda36.queue_free()


func _on_moneda37_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda37.queue_free()


func _on_moneda38_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda38.queue_free()


func _on_moneda39_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda39.queue_free()


func _on_moneda40_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda40.queue_free()


func _on_moneda10_body_entered(body):
	capital = capital + 1 
	$Interficie.actualitza_monedes(capital)
	$moneda10.queue_free()

extends Node

var capital
var vides
signal mort

func _ready():
	capital = 0
	vides = 4
func _process(delta):
	$"CanvasLayer/monedes/Nivell de capitalisme".text = str(capital)
	$"CanvasLayer/Vida/vida total".text = str(vides)
	
	if capital == 20:
		vides + 1
	if vides <= 0:
		emit_signal("mort")



func _on_Moneda_cash():
	$CanvasLayer/monedes/AnimatedSprite.play("rotacio")
	capital + 1


func _on_Zoro_cop():
	vides - 1

extends StaticBody2D

signal enrere
func _ready():
	pass 




func _on_Button_pressed():
	emit_signal("enrere")

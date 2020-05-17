extends Node


signal enrere


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _on_Button_pressed():
	emit_signal("enrere")

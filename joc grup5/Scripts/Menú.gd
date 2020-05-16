extends Node

signal controls
signal jugar




func _on_Button2_pressed():
	emit_signal("controls")




func _on_Button_pressed():
	emit_signal("jugar")

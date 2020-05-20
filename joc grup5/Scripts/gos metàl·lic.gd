extends Node
signal cop



func _on_Area2D_cop():
	emit_signal("cop")

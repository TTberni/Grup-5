extends Path2D

signal cop




func _on_Area2D_body_entered(body):
	emit_signal("cop")

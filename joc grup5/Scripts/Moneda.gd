extends Area2D

signal cash


func _on_Area2D_body_entered(body):
	emit_signal("cash")
	queue_free()
	

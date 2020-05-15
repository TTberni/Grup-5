extends RigidBody2D
signal cash


func _on_RigidBody2D_body_entered(body):
	emit_signal("cash")

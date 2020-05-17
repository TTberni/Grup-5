extends Node


func _ready():
	$Zoro.hide()
	$Pantalla.hide()
	$CONTROLS.hide()
	$CONTROLS/Button.hide()
	$CONTROLS/CanvasLayer/Label.hide()
	$CONTROLS/CanvasLayer/Label2.hide()
	$CONTROLS/CanvasLayer/Label3.hide()
	$CONTROLS/CanvasLayer/Label4.hide()
	


func _on_Menu_controls():
	$Menu.hide()
	$CONTROLS.show()
	$CONTROLS/Button.show()
	$CONTROLS/CanvasLayer/Label.show()
	$CONTROLS/CanvasLayer/Label2.show()
	$CONTROLS/CanvasLayer/Label3.show()
	$CONTROLS/CanvasLayer/Label4.show()
	

func _on_CONTROLS_enrere():
	$Menu.show()
	$CONTROLS.hide()
	$CONTROLS/Button.hide()
	$CONTROLS/CanvasLayer/Label.hide()
	$CONTROLS/CanvasLayer/Label2.hide()
	$CONTROLS/CanvasLayer/Label3.hide()
	$CONTROLS/CanvasLayer/Label4.hide()

func _on_Menu_jugar():
	$Zoro.show()
	$Pantalla.show()
	$Menu.hide()
	

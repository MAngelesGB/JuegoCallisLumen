extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("interaccion"):
		$Tecla.visible = false
	pass


func _on_interaccion_body_entered(body):
	if "Heroe" in body.get_name():
		$Tecla.visible = true
	pass # Replace with function body.


func _on_interaccion_body_exited(body):
	if "Heroe" in body.get_name():
		$Tecla.visible = false
	pass # Replace with function body.

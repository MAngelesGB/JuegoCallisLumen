extends Area2D

@export var escenaFinal: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if "Heroe" in body.get_name():
		body.hide()
		Transicion.change_scene(escenaFinal)
	pass # Replace with function body.

extends VBoxContainer
@export var escenaIniciarAventura: PackedScene
@export var opciones: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_inicio_aventura_pressed():
	Transicion.change_scene(escenaIniciarAventura)

func _on_opciones_pressed():
		var menuOpcionesIntancia = opciones.instantiate()
		get_tree().root.get_node("menu_principal").add_child(menuOpcionesIntancia)
		

func _on_salir_pressed():
	get_tree().quit()

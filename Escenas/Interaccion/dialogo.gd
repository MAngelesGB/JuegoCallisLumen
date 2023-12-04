extends CanvasLayer

const textoEldric: Array = [
	"La oscuridad es una fuerza poderosa...",
	"La luz se ve opacada por este mal, y las almas de todos han sido consumidas", 
	"...incluyendo la mia", 
	"Aquel paramo que una vez fue algo, se ha reducido a sombras", 
	"El Abyssia ha tomado su vida y a sus habitantes.",
	"Si cruzas los limites, tendras que atenerte a las consecuencias.",
	"Pero ...",
	"Si sigues tu camino encontraras la luz"
]

var chats: int = 0

func ponerTexto(texto:String) -> void:
	show()
	get_tree().paused = true
	$Texto.text = texto
	$AnimacionTexto.play("texto")
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("interaccion"):
		npcTexto()
	pass
	
func npcTexto():
	if chats < textoEldric.size():
		ponerTexto(textoEldric[chats])
		chats += 1
	else:
		chats -= textoEldric.size()
		hide()
		get_tree().paused = false


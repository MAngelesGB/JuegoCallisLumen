extends CharacterBody2D

var gravedad = 250
var velocidad = 5050
var seguirAbyss = false
var player = null
var ataca = true
 

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	if seguirAbyss: 
		$AnimationPlayer.play("caminar")
		if player.global_position.x - position.x > 0: 
			velocity.x = velocidad*delta
		else: 
			velocity.x = -(velocidad*delta)
		if ataca: 
			player.herir()
			ataca = false
			$Timer.start()
	#else: 
	#	velocity.x = 0
	
	velocity.y += gravedad*delta
	move_and_slide()


func _on_deteccion_body_entered(body):
	if "heroe" in body.get_name():
		player = body
		seguirAbyss = true

func _on_deteccion_body_exited(body):
	if "heroe" in body.get_name():
		player = null
		seguirAbyss = false

func _on_timer_timeout():
	ataca = true

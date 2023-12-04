extends CharacterBody2D

var velocidad = 90
var gravedad = 250
var salto = 180

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	velocity.y += gravedad*delta
	
	if Input.is_action_pressed("derecha"):
		velocity.x = velocidad
		$Sprite2D.flip_h = false
	elif Input.is_action_pressed("izquierda"):
		velocity.x = -velocidad
		$Sprite2D.flip_h = true
	else:
		velocity.x = 0
	if is_on_floor():
		if Input.is_action_just_pressed("saltar"):
				velocity.y = -salto
	
	move_and_slide()
	animaciones()

func animaciones():
	if is_on_floor():
		if velocity.x != 0:
			$AnimacionHeroe.play("correr")
		else:
			$AnimacionHeroe.play("idle")
	else:
		$AnimacionHeroe.play("saltar")
	

extends TextureButton

@export var text = "Text button"
@export var candle_margin_from_center = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	setup_text()
	hide_candle()
pass # Replace with function body.

func setup_text():
	$RichTextLabel.bbcode_text = "[left] %s [/left]" %text

func hide_candle(): 
	$Candle.visible = false
	
func show_candle(): 
	$Candle.visible = true
	$Candle.global_position.y = global_position.y + (size.y/3.0)
	
	var center_x = global_position.x + (size.x/2)
	$Candle.global_position.x = center_x - candle_margin_from_center

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_focus_entered():
	show_candle()

func _on_focus_exited():
	hide_candle()

func _on_mouse_entered():
	grab_focus()

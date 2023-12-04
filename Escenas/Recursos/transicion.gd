extends CanvasLayer

func change_scene(path: PackedScene) -> void:
	
	$AnimationPlayer.play("escenaTransicion")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_packed(path)
	$AnimationPlayer.play_backwards("escenaTransicion")

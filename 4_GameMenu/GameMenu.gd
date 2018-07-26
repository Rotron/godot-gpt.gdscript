extends Control

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_toggle_game_menu") and $GameMenu.visible:
		hide()

func show():
	get_tree().paused = true
	$GameMenu.visible = false
	$GameMenuAnim.play("show")

func hide():
	$GameMenuAnim.play("hide")

func resume():
	get_tree().paused = false